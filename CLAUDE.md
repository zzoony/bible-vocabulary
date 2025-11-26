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
│   ├── pipeline-output-files.md  # 파이프라인 출력 파일 설명
│   └── filtered-words.md     # 필터링된 단어 목록
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
    │   ├── extract_words.py  # Step 1: 단어 추출
    │   ├── filter_stopwords.py   # Step 2: 불용어 제거
    │   ├── filter_proper_nouns.py # Step 3: 고유명사 제거
    │   ├── finalize.py       # Step 4: 최종 처리
    │   ├── extract_sentences.py  # Step 5: 예문 추출
    │   ├── add_definitions.py    # Step 6: 발음/뜻 생성
    │   └── validate_definitions.py # Step 7: 검증
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

## Data Pipeline (7단계)

| Step | Script | Output | 설명 |
|------|--------|--------|------|
| 1 | extract_words.py | raw_words.json | 단어 추출, Lemmatization |
| 2 | filter_stopwords.py | filtered_stopwords.json | 불용어 제거 |
| 3 | filter_proper_nouns.py | filtered_proper_nouns.json | 고유명사 제거 |
| 4 | finalize.py | bible_vocabulary.json | 최소 길이/빈도 필터, 순위 부여 |
| 5 | extract_sentences.py | bible_vocabulary_with_sentences.json | 예문 추출 (선택) |
| 6 | add_definitions.py | bible_vocabulary_final.json | 발음/뜻 생성 (Claude) |
| 7 | validate_definitions.py | - | 품질 검증 |

## Configuration

### scripts/config.py
- `VERSION`: 처리할 성경 버전 (기본: "niv")
- `MIN_WORD_LENGTH`: 최소 단어 길이 (기본: 2)
- `MIN_FREQUENCY`: 최소 출현 빈도 (기본: 2)

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

`bible_vocabulary_final.json`:
```json
{
  "metadata": {
    "source": "New International Version",
    "total_unique_words": 4930,
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

## Adding New Bible Version

1. `source-data/{VERSION}_Bible.json` 추가
2. `configs/{version}.json` 설정 파일 생성
3. `data/{version}/` 폴더 생성 (stopwords.txt, protected_words.txt, proper_nouns.txt)
4. `python run_pipeline.py --version {version}` 실행
