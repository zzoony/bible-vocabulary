# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

성경 텍스트에서 단어를 추출하여 영어 단어장 앱을 만드는 프로젝트.
- **Phase 1**: pipeline/ - 데이터 추출 및 정제 ✅
- **Phase 2**: app/ - 단어장 앱 (추후 개발)

## Project Structure

```
bible-vocabulary/
├── CLAUDE.md                 # 이 파일 (Claude Code 가이드)
├── .coderabbit.yaml          # CodeRabbit 설정
├── .gitignore
├── app/                      # 단어장 앱 (Phase 2, 추후 개발)
├── docs/                     # 문서
│   ├── project-plan.md       # 프로젝트 계획
│   └── pipeline-output-files.md  # 파이프라인 출력 파일 설명
└── pipeline/                 # 데이터 파이프라인
    ├── run_pipeline.py       # 파이프라인 실행 진입점
    ├── requirements.txt      # Python 의존성
    ├── configs/              # 버전별 설정 파일
    │   └── {version}.json
    ├── data/                 # 필터링용 참조 데이터
    │   ├── common/           # 공통 데이터
    │   └── {version}/        # 버전별 데이터
    │       ├── stopwords.txt
    │       ├── protected_words.txt
    │       └── proper_nouns.txt
    ├── scripts/              # 처리 스크립트
    │   ├── config.py         # 경로 및 설정
    │   ├── utils.py          # 공통 유틸리티 (로깅 등)
    │   ├── translation_utils.py  # 번역 공통 함수
    │   ├── extract_words.py  # Step 1: 단어 추출
    │   ├── filter_stopwords.py   # Step 2: 불용어 제거
    │   ├── filter_proper_nouns.py # Step 3: 고유명사 제거
    │   ├── finalize.py       # Step 4: 최종 처리
    │   ├── extract_sentences.py  # Step 5: 예문 추출
    │   ├── add_definitions.py    # Step 6: 발음/뜻 생성
    │   ├── validate_definitions.py # Step 7: 정의 검증
    │   ├── translate_sentences.py  # Step 8: 예문 번역
    │   ├── validate_translations.py # Step 9: 번역 검증
    │   └── retry_missing_translations.py # 실패한 번역 재시도
    ├── source-data/          # 원본 성경 데이터
    │   └── {VERSION}_Bible.json
    └── output/               # 처리 결과물 (gitignore)
        └── {version}/
```

## Commands

### Run Pipeline (Step 1-4)
```bash
cd pipeline
pip install -r requirements.txt
python run_pipeline.py                    # 기본 실행 (NIV)
python run_pipeline.py --version niv      # 버전 지정
python run_pipeline.py --with-sentences   # 예문 추출 포함 (Step 5)
```

### Run Individual Steps
```bash
cd pipeline/scripts
python extract_words.py        # Step 1: 단어 추출 + Lemmatization
python filter_stopwords.py     # Step 2: 불용어 제거
python filter_proper_nouns.py  # Step 3: 고유명사 제거
python finalize.py             # Step 4: 최종 처리
python extract_sentences.py    # Step 5: 예문 추출 (선택)
```

### Add Definitions (Step 6)
```bash
cd pipeline/scripts
python add_definitions.py              # 전체 실행
python add_definitions.py --test 100   # 테스트 (100개만)
```
**요구사항**: Claude CLI가 설치되어 PATH에 있어야 함

### Validate Definitions (Step 7)
```bash
cd pipeline/scripts
python validate_definitions.py                # 기본 검증 (API 샘플 50개)
python validate_definitions.py --api-sample 0 # API 검증 없이 빠른 검증
```

### Translate Sentences (Step 8)
```bash
cd pipeline/scripts
python translate_sentences.py              # 전체 실행 (step5_sentences.json → final_sentences_korean.json)
python translate_sentences.py --test 100   # 테스트 (100개만)
```
**요구사항**: Claude CLI가 설치되어 PATH에 있어야 함

### Validate Translations (Step 9)
```bash
cd pipeline/scripts
python validate_translations.py            # 번역 품질 검증
python validate_translations.py --fix      # 참조 패턴 자동 수정
```
**검증 항목**:
- 빈 번역, 영어 단어 포함, 참조 패턴 포함 (예: "(창세기 1:1)"), 길이 비율 이상

### Retry Missing Translations (번역 실패 재시도)
```bash
cd pipeline/scripts
python retry_missing_translations.py       # 실패한 번역 재시도 (최대 3회)
```
**요구사항**: Claude CLI가 설치되어 PATH에 있어야 함
**용도**: `translate_sentences.py` 실행 후 일부 번역이 실패한 경우 재시도

## Data Pipeline (9단계)

| Step | Script | Output | 설명 |
|------|--------|--------|------|
| 1 | extract_words.py | step1_raw_words.json | 단어 추출, Lemmatization |
| 2 | filter_stopwords.py | step2_filtered_stopwords.json | 불용어 제거 |
| 3 | filter_proper_nouns.py | step3_filtered_proper_nouns.json | 고유명사 제거 |
| 4 | finalize.py | step4_vocabulary.json | 최소 길이/빈도 필터, 순위 부여 |
| 5 | extract_sentences.py | step5_vocabulary_with_sentences.json, step5_sentences.json | 예문 추출 |
| 6 | add_definitions.py | final_vocabulary.json | 발음/뜻 생성 (Claude) |
| 7 | validate_definitions.py | - | 단어 정의 검증 |
| 8 | translate_sentences.py | final_sentences_korean.json | 예문 한글 번역 (Claude) |
| 9 | validate_translations.py | - | 번역 품질 검증 |

## Configuration

### scripts/config.py
- `VERSION`: 처리할 성경 버전 (기본: "niv")
- `MIN_WORD_LENGTH`: 최소 단어 길이 (기본: 2)
- `MIN_FREQUENCY`: 최소 출현 빈도 (기본: 2)

### scripts/extract_sentences.py
- `MIN_SENTENCES_PER_WORD`: 최소 예문 수 (기본: 1)
- `MAX_SENTENCES_PER_WORD`: 최대 예문 수 (기본: 5)
- `MAX_SENTENCE_LENGTH`: 최대 문장 길이 (기본: 300)
- `MIN_SENTENCE_LENGTH`: 최소 문장 길이 (기본: 30)

### data/{version}/stopwords.txt 구조
불용어 파일은 다음 카테고리로 구성:
- **기본 불용어**: 관사, 대명사, 전치사, 접속사 등
- **축약형**: lemmatization으로 생성된 축약형 (dont, didnt 등)
- **Lemmatization artifacts**: 성경에 없는 lemma (fulfil, appal 등)
- **Wrong lemmas**: 잘못된 lemma (hat→hated 오류, jam→James 오류 등)

### configs/{version}.json
```json
{
  "version": "niv",
  "name": "New International Version",
  "source_file": "NIV_Bible.json",
  "min_word_length": 2,
  "min_frequency": 2
}
```

## Input Data Format

`source-data/{VERSION}_Bible.json`:
```json
{
  "Book": {
    "Chapter": {
      "Verse": "text"
    }
  }
}
```

## Output Format

### final_vocabulary.json (단어장)
```json
{
  "metadata": {
    "source": "New International Version",
    "total_unique_words": 4868,
    "definitions_added": true
  },
  "words": [
    {
      "word": "lord",
      "count": 7864,
      "rank": 1,
      "sentence_ids": ["psalms-18-1", ...],
      "ipa_pronunciation": "[lɔːrd]",
      "korean_pronunciation": "로드",
      "definition_korean": "주인, 영주, 주님"
    }
  ]
}
```

### final_sentences_korean.json (예문 + 한글 번역)
```json
{
  "metadata": {
    "source": "New International Version",
    "total_sentences": 16224,
    "korean_translations_added": true,
    "translations_count": 16224
  },
  "sentences": {
    "psalms-18-1": {
      "text": "I love you, LORD, my strength.",
      "ref": "Psalms 18:1",
      "book": "Psalms",
      "chapter": 18,
      "verse": 1,
      "korean": "여호와 나의 힘이여 내가 주를 사랑하나이다."
    }
  }
}
```

## Adding New Bible Version

1. `source-data/{VERSION}_Bible.json` 추가
2. `configs/{version}.json` 설정 파일 생성
3. `data/{version}/` 폴더 생성 (stopwords.txt, protected_words.txt, proper_nouns.txt)
4. `python run_pipeline.py --version {version}` 실행

## Flutter App (apps/bible_vocabulary)

### iOS 시뮬레이터에서 실행
Hot reload를 사용하려면 별도 터미널 창에서 실행해야 함. 스크립트 파일을 생성하여 실행:

```bash
# 1. 스크립트 파일 생성
cat > /tmp/run_flutter.sh << 'SCRIPT'
#!/bin/bash
cd /Users/peter/Dev/bible-vocabulary/apps/bible_vocabulary
flutter run -d "iPhone 16 Pro"
SCRIPT
chmod +x /tmp/run_flutter.sh

# 2. 새 터미널 창에서 실행
osascript -e 'tell application "Terminal" to do script "/tmp/run_flutter.sh"'
```

**주의**: 백그라운드 실행(`run_in_background`)으로는 Hot reload (`r`) 사용 불가
