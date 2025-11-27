# Bible Vocabulary Flutter App - Implementation Plan

## Overview

성경 단어장 앱 (iOS/Android, 향후 iPad 지원)
- **Tech Stack**: Flutter + Isar (NoSQL DB) + Riverpod (상태관리)
- **Data Source**: `pipeline/output/niv/final_vocabulary.json`, `final_sentences_korean.json`
- **App Location**: `apps/bible_vocabulary/`

---

## 1. Project Structure

```
apps/
└── bible_vocabulary/
    ├── pubspec.yaml
    ├── lib/
    │   ├── main.dart
    │   ├── app.dart
    │   │
    │   ├── core/
    │   │   ├── constants/
    │   │   │   └── app_colors.dart
    │   │   ├── theme/
    │   │   │   ├── app_theme.dart
    │   │   │   └── app_typography.dart
    │   │   └── utils/
    │   │       └── responsive.dart
    │   │
    │   ├── data/
    │   │   ├── models/                    # Isar Collections
    │   │   │   ├── word_model.dart
    │   │   │   ├── sentence_model.dart
    │   │   │   └── user_progress_model.dart
    │   │   ├── datasources/
    │   │   │   └── json_import_service.dart
    │   │   └── repositories/
    │   │       ├── word_repository.dart
    │   │       └── progress_repository.dart
    │   │
    │   ├── providers/                     # Riverpod Providers
    │   │   ├── database_provider.dart
    │   │   ├── word_providers.dart
    │   │   ├── learning_session_provider.dart
    │   │   └── settings_provider.dart
    │   │
    │   └── screens/
    │       ├── home/
    │       │   ├── home_screen.dart
    │       │   └── widgets/menu_card.dart
    │       ├── word_learning/
    │       │   ├── word_learning_screen.dart
    │       │   └── widgets/
    │       │       ├── flip_card.dart
    │       │       ├── word_card_front.dart
    │       │       ├── word_card_back.dart
    │       │       └── swipeable_card.dart
    │       ├── my_vocabulary/
    │       └── settings/
    │
    └── assets/
        └── data/
            ├── final_vocabulary.json
            └── final_sentences_korean.json
```

---

## 2. Isar Database Models

### WordModel
```dart
@collection
class WordModel {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.hash)
  late String word;
  late int count;
  @Index()
  late int rank;
  late List<String> sentenceIds;
  String? ipaPronunciation;
  String? koreanPronunciation;
  String? definitionKorean;
}
```

### SentenceModel
```dart
@collection
class SentenceModel {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.hash, unique: true)
  late String sentenceId;  // e.g., "psalms-18-1"
  late String text;        // English
  late String korean;      // Korean translation
  late String ref;         // "Psalms 18:1"
  late String book;
}
```

### UserProgressModel
```dart
@collection
class UserProgressModel {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.hash, unique: true)
  late String word;
  @Enumerated(EnumType.ordinal)
  late WordStatus status;  // unknown, learning, known
  late bool isSaved;       // My Vocabulary
  late int viewCount;
  late DateTime lastViewedAt;
}

enum WordStatus { unknown, learning, known }
```

---

## 3. Style Guide (from Design Screenshots)

### Colors
```dart
// Light Mode
lightBackground: #FFFFFF
lightSurface: #F5F5F5
lightText: #1C1C1E
lightTextSecondary: #8E8E93

// Dark Mode
darkBackground: #000000
darkSurface: #1C1C1E
darkCardBackground: #2C2C2E
darkText: #FFFFFF

// Accent Colors
mint: #4ECDC4         // Primary
orange: #FFA726       // Secondary
purple: #9575CD       // Tertiary
pink: #EF5350

// Swipe Feedback
swipeUpGreen: #4CAF50    // "아는 단어"
swipeDownBlue: #2196F3   // "저장"
```

### Typography
- Word Display: 42px, Bold
- IPA: 20px, Italic
- Korean Meaning: 22px, Medium
- Body: 16px, Regular
- Bible Reference: 14px, Medium

### Spacing
- Card Radius: 20px
- Card Padding: 20px
- Screen Horizontal Padding: 20px

---

## 4. Screen Layouts (ASCII)

### Home Screen
```
┌─────────────────────────────────┐
│       📖 Bible Vocabulary       │
│         Today's Words           │
├─────────────────────────────────┤
│                                 │
│  ┌─────────────────────────┐    │
│  │  📚 단어 학습             │    │
│  │  4,930 words             │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │  ⭐ 나만의 단어장          │    │
│  │  0 saved                 │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │  ⚙️ 설정                  │    │
│  └─────────────────────────┘    │
│                                 │
└─────────────────────────────────┘
```

### Word Learning Screen - Front
```
┌─────────────────────────────────┐
│  ←  단어 학습      [필터] [정렬] │
├─────────────────────────────────┤
│              1 / 4930           │
│                                 │
│        ↑ 아는 단어               │
│                                 │
│  ┌─────────────────────────┐    │
│  │                         │    │
│  │                         │    │
│  │         lord            │    │
│  │        [lɔːrd]          │    │
│  │                         │    │
│  │     (tap to flip)       │    │
│  │                         │    │
│  └─────────────────────────┘    │
│                                 │
│        ↓ 저장하기               │
│                                 │
│   ◀ 이전      뒤집기      다음 ▶  │
│                                 │
└─────────────────────────────────┘
```

### Word Learning Screen - Back
```
┌─────────────────────────────────┐
│  ←  단어 학습      [필터] [정렬] │
├─────────────────────────────────┤
│              1 / 4930           │
│                                 │
│  ┌─────────────────────────┐    │
│  │                         │    │
│  │   주인, 영주, 주님        │    │
│  │   로드                   │    │
│  │  ──────────────────────  │    │
│  │                         │    │
│  │  "I love you, LORD,     │    │
│  │   my strength."         │    │
│  │                         │    │
│  │  "주여, 나의 힘이신       │    │
│  │   주를 사랑하나이다."     │    │
│  │                         │    │
│  │      - Psalms 18:1      │    │
│  │                         │    │
│  └─────────────────────────┘    │
│                                 │
│   ◀ 이전      뒤집기      다음 ▶  │
│                                 │
└─────────────────────────────────┘
```

---

## 5. Gesture & Animation Spec

### Swipe Gestures
| Direction | Action | Visual Feedback |
|-----------|--------|-----------------|
| LEFT | 다음 단어 | Card slides left |
| RIGHT | 이전 단어 | Card slides right |
| UP | "아는 단어" 태그 | Green overlay + checkmark |
| DOWN | 나만의 단어장 저장 | Blue overlay + bookmark |

### Card Flip Animation
- Duration: 400ms
- Curve: easeInOut
- 3D perspective with Y-axis rotation
- Front/Back switch at 90° (0.5 progress)

### Swipe Thresholds
- Distance: 100px
- Velocity: 800 px/s

---

## 6. Implementation Phases

### Phase 1: Foundation (Day 1-2)
1. Flutter 프로젝트 생성 (`apps/bible_vocabulary/`)
2. Dependencies 설정 (pubspec.yaml)
3. Isar models 정의 및 코드 생성
4. JSON import service 구현
5. Splash screen with import progress

### Phase 2: Core UI (Day 3-4)
1. Theme 설정 (Light/Dark mode)
2. Home screen with menu cards
3. Basic navigation (go_router)

### Phase 3: Word Learning (Day 5-7)
1. Word card front/back widgets
2. Flip animation implementation
3. Swipeable card with 4-direction gestures
4. Visual feedback overlays
5. Learning session provider (Riverpod)

### Phase 4: Features (Day 8-9)
1. Filter/Sort functionality
2. Starting point options (처음부터, 이어하기, 랜덤)
3. Progress persistence
4. "아는 단어" exclusion logic

### Phase 5: Polish (Day 10)
1. My Vocabulary screen (저장된 단어 목록)
2. Settings screen (테마 토글)
3. iPad responsive layout
4. Final testing on iOS

---

## 7. Dependencies (pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter

  # State Management
  flutter_riverpod: ^2.4.9
  riverpod_annotation: ^2.3.3

  # Database
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1
  path_provider: ^2.1.1

  # Routing
  go_router: ^13.0.0

  # Code Generation
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.4.7
  riverpod_generator: ^2.3.9
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  isar_generator: ^3.1.0+1
```

---

## 8. Critical Files to Create

| Priority | File | Purpose |
|----------|------|---------|
| 1 | `lib/data/models/word_model.dart` | Isar word collection |
| 2 | `lib/data/models/sentence_model.dart` | Isar sentence collection |
| 3 | `lib/data/datasources/json_import_service.dart` | JSON → Isar import |
| 4 | `lib/core/theme/app_theme.dart` | Light/Dark theme |
| 5 | `lib/providers/learning_session_provider.dart` | Learning state |
| 6 | `lib/screens/word_learning/widgets/flip_card.dart` | Card flip animation |
| 7 | `lib/screens/word_learning/widgets/swipeable_card.dart` | 4-direction gestures |

---

## 9. Data Files to Copy

```bash
# Pipeline output → App assets
cp pipeline/output/niv/final_vocabulary.json apps/bible_vocabulary/assets/data/
cp pipeline/output/niv/final_sentences_korean.json apps/bible_vocabulary/assets/data/
```

---

## 10. Testing Plan

1. **iOS Simulator**: iPhone 16 Pro (기본 테스트)
2. **Responsive**: iPad Pro 12.9" (향후)
3. **Key Scenarios**:
   - First launch: JSON import + progress indicator
   - Card flip animation smoothness
   - All 4 swipe directions
   - Dark/Light mode toggle
   - Resume position after app restart
