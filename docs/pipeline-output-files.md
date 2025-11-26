# Pipeline Output Files

파이프라인 실행 결과로 생성되는 파일들에 대한 설명입니다.

## 디렉토리 구조

```
pipeline/
├── configs/
│   └── {version}.json          # 버전별 설정 파일
├── data/
│   ├── common/
│   │   └── bible_proper_nouns.txt  # 공통 고유명사 목록 (참조용)
│   └── {version}/
│       ├── stopwords.txt          # 버전별 불용어
│       ├── protected_words.txt    # 버전별 보호단어
│       └── proper_nouns.txt       # 버전별 고유명사
├── output/
│   └── {version}/                 # 버전별 출력 폴더
│       ├── raw_words.json
│       ├── filtered_stopwords.json
│       ├── filtered_proper_nouns.json
│       ├── bible_vocabulary.json
│       ├── sentences.json
│       └── bible_vocabulary_with_sentences.json
└── source-data/
    └── {VERSION}_Bible.json       # 원본 성경 데이터
```

## 파이프라인 흐름

```
{VERSION}_Bible.json (예: NIV_Bible.json)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 1: extract_words.py                                    │
│ - 성경 텍스트에서 단어 추출                                    │
│ - 유니코드 정규화 (따옴표, em dash 등)                         │
│ - 소유격/축약형 제거 (king's → king, don't → dont)            │
│ - Lemmatization 적용 (sons → son, walked → walk)            │
└─────────────────────────────────────────────────────────────┘
      ↓
   output/{version}/raw_words.json (9,641 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 2: filter_stopwords.py                                 │
│ - 불용어(stopwords) 제거                                     │
│ - data/{version}/stopwords.txt 파일 사용                     │
│ - 관사, 대명사, 전치사, 접속사, be/have/do 동사 등            │
└─────────────────────────────────────────────────────────────┘
      ↓
   output/{version}/filtered_stopwords.json (9,471 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 3: filter_proper_nouns.py                              │
│ - 고유명사 제거 (인명, 지명)                                  │
│ - data/{version}/proper_nouns.txt + 대문자 패턴 분석         │
│ - data/{version}/protected_words.txt로 보호단어 유지         │
└─────────────────────────────────────────────────────────────┘
      ↓
   output/{version}/filtered_proper_nouns.json (6,625 words)
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 4: finalize.py                                         │
│ - 숫자만 있는 항목 제거                                       │
│ - 2글자 미만 단어 제거                                        │
│ - 빈도 2회 미만 단어 제거                                     │
│ - 빈도순 정렬 및 순위(rank) 부여                              │
└─────────────────────────────────────────────────────────────┘
      ↓
   output/{version}/bible_vocabulary.json (4,930 words) ← 최종 결과
      ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 5: extract_sentences.py (선택사항)                      │
│ - 각 단어에 대한 예문 추출 (2-5개)                            │
│ - 다양한 성경 책에서 추출하여 다양성 확보                      │
└─────────────────────────────────────────────────────────────┘
      ↓
   output/{version}/sentences.json
   output/{version}/bible_vocabulary_with_sentences.json
```

## 사용법

```bash
# 기본 실행 (NIV)
python3 run_pipeline.py

# 버전 지정
python3 run_pipeline.py --version niv
python3 run_pipeline.py --version esv

# 문장 추출 포함
python3 run_pipeline.py --version niv --with-sentences
```

## 파일 설명

### 1. `raw_words.json`
- **생성**: `extract_words.py`
- **내용**: 성경에서 추출한 모든 단어 (lemmatization 적용 후)
- **용도**: 원본 추출 결과 확인, 디버깅

### 2. `filtered_stopwords.json`
- **생성**: `filter_stopwords.py`
- **내용**: 불용어 제거 후 남은 단어
- **제거 대상**: a, an, the, is, are, was, I, you, he, in, on, to, and, or, but 등

### 3. `filtered_proper_nouns.json`
- **생성**: `filter_proper_nouns.py`
- **내용**: 고유명사 제거 후 남은 단어
- **제거 대상**: Israel, Jesus, David, Moses, Jerusalem, Egypt 등
- **보호 대상**: lord, god, king, son, father, temple, covenant 등

### 4. `bible_vocabulary.json` (최종)
- **생성**: `finalize.py`
- **내용**: 단어장 앱에서 사용할 최종 데이터
- **특징**: 빈도순 정렬, 순위(rank) 포함

```json
{
  "metadata": {
    "source": "New International Version",
    "extraction_date": "2025-11-26",
    "total_unique_words": 4930,
    "total_occurrences": 244907,
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

### 5. `sentences.json` (선택)
- **생성**: `extract_sentences.py`
- **내용**: 예문으로 사용할 성경 구절들
- **구조**: sentence_id → {text, ref, book}

### 6. `bible_vocabulary_with_sentences.json` (선택)
- **생성**: `extract_sentences.py`
- **내용**: 최종 단어장 + 예문 ID 매핑

## 단어 수 변화 (NIV 기준)

| 단계 | 파일 | 단어 수 | 변화 |
|------|------|---------|------|
| Step 1 | raw_words.json | 9,641 | - |
| Step 2 | filtered_stopwords.json | 9,471 | -170 |
| Step 3 | filtered_proper_nouns.json | 6,625 | -2,846 |
| Step 4 | bible_vocabulary.json | 4,930 | -1,695 |

## 설정 파일

### `configs/{version}.json`

```json
{
  "version": "niv",
  "name": "New International Version",
  "language": "en",
  "source_file": "NIV_Bible.json",
  "data_dir": "niv",
  "stopwords_file": "stopwords.txt",
  "protected_words_file": "protected_words.txt",
  "proper_nouns_file": "proper_nouns.txt",
  "min_word_length": 2,
  "min_frequency": 2
}
```

## 참고

- `output/` 폴더는 `.gitignore`에 포함되어 GitHub에 업로드되지 않습니다.
- 파이프라인을 다시 실행하면 파일들이 덮어씌워집니다.
- 중간 파일들은 디버깅 및 검증 목적으로 유지됩니다.
- 새 버전 추가 시: `configs/{version}.json`과 `data/{version}/` 폴더 생성 필요
