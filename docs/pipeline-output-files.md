# Pipeline Output Files

파이프라인 실행 결과로 생성되는 파일들에 대한 설명입니다.

## 파이프라인 흐름

```
NIV_Bible.json
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 1: extract_words.py                                    │
│ - 성경 텍스트에서 단어 추출                                    │
│ - 유니코드 정규화 (따옴표, em dash 등)                         │
│ - 소유격/축약형 제거 (king's → king, don't → dont)            │
│ - Lemmatization 적용 (sons → son, walked → walk)            │
└─────────────────────────────────────────────────────────────┘
      ↓
   raw_words.json (9,641 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 2: filter_stopwords.py                                 │
│ - 불용어(stopwords) 제거                                     │
│ - 관사, 대명사, 전치사, 접속사, be/have/do 동사 등            │
└─────────────────────────────────────────────────────────────┘
      ↓
   filtered_stopwords.json (9,450 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 3: filter_proper_nouns.py                              │
│ - 고유명사 제거 (인명, 지명)                                  │
│ - 대문자 패턴 분석 + 성경 고유명사 목록 활용                   │
│ - 신학 핵심어/일반 명사는 보호 (lord, god, king, son 등)      │
└─────────────────────────────────────────────────────────────┘
      ↓
   filtered_proper_nouns.json (6,228 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 4: finalize.py                                         │
│ - 숫자만 있는 항목 제거                                       │
│ - 2글자 미만 단어 제거                                        │
│ - 빈도 2회 미만 단어 제거                                     │
│ - 빈도순 정렬 및 순위(rank) 부여                              │
└─────────────────────────────────────────────────────────────┘
      ↓
   bible_vocabulary.json (4,534 words) ← 최종 결과
```

## 파일 설명

### 1. `raw_words.json`
- **생성**: `extract_words.py`
- **내용**: 성경에서 추출한 모든 단어 (lemmatization 적용 후)
- **용도**: 원본 추출 결과 확인, 디버깅

```json
{
  "metadata": {
    "step": "raw_extraction",
    "total_unique_words": 9641,
    "total_occurrences": 727193
  },
  "words": [
    {"word": "the", "count": 55813},
    {"word": "and", "count": 29502},
    ...
  ]
}
```

### 2. `filtered_stopwords.json`
- **생성**: `filter_stopwords.py`
- **내용**: 불용어 제거 후 남은 단어
- **제거 대상**: a, an, the, is, are, was, I, you, he, in, on, to, and, or, but 등

```json
{
  "metadata": {
    "step": "filtered_stopwords",
    "stopwords_removed": 191,
    "total_unique_words": 9450
  },
  "words": [...]
}
```

### 3. `filtered_proper_nouns.json`
- **생성**: `filter_proper_nouns.py`
- **내용**: 고유명사 제거 후 남은 단어
- **제거 대상**: Israel, Jesus, David, Moses, Jerusalem, Egypt 등
- **보호 대상**: lord, god, king, son, father, temple, covenant 등

```json
{
  "metadata": {
    "step": "filtered_proper_nouns",
    "proper_nouns_removed": 3222,
    "total_unique_words": 6228
  },
  "words": [...]
}
```

### 4. `bible_vocabulary.json` (최종)
- **생성**: `finalize.py`
- **내용**: 단어장 앱에서 사용할 최종 데이터
- **특징**: 빈도순 정렬, 순위(rank) 포함

```json
{
  "metadata": {
    "source": "NIV Bible",
    "extraction_date": "2025-11-26",
    "total_unique_words": 4534,
    "total_occurrences": 175154,
    "filters_applied": ["stopwords", "proper_nouns", "min_length_2", "min_frequency_2"]
  },
  "words": [
    {"word": "lord", "count": 7864, "rank": 1},
    {"word": "god", "count": 4527, "rank": 2},
    {"word": "son", "count": 3131, "rank": 3},
    ...
  ]
}
```

## 단어 수 변화

| 단계 | 파일 | 단어 수 | 변화 |
|------|------|---------|------|
| Step 1 | raw_words.json | 9,641 | - |
| Step 2 | filtered_stopwords.json | 9,450 | -191 |
| Step 3 | filtered_proper_nouns.json | 6,228 | -3,222 |
| Step 4 | bible_vocabulary.json | 4,534 | -1,694 |

## 참고

- 이 폴더는 `.gitignore`에 포함되어 GitHub에 업로드되지 않습니다.
- 파이프라인을 다시 실행하면 파일들이 덮어씌워집니다.
- 중간 파일들은 디버깅 및 검증 목적으로 유지됩니다.
