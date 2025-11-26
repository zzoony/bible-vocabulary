# Bible Vocabulary Project Plan

## 1. 프로젝트 개요

### 목표
NIV 성경에서 단어를 추출하여 성경 기반 영어 단어장 앱을 개발한다.

### 범위
- **Phase 1**: 데이터 파이프라인 구축 (단어 추출 및 정제)
- **Phase 2**: 단어장 앱 개발

---

## 2. Phase 1: 데이터 파이프라인

### 2.1 입력 데이터 분석

**NIV_Bible.json 구조:**
```json
{
  "Genesis": {
    "1": {
      "1": "In the beginning God created the heavens and the earth.",
      "2": "Now the earth was formless..."
    }
  }
}
```

- 계층: Book > Chapter > Verse > Text
- 특수문자: 유니코드 따옴표(" "), em dash(—), 줄바꿈(\n)

### 2.2 단어 추출 단계

#### Step 1: Raw Word Extraction
```
입력: NIV_Bible.json
처리:
  1. 모든 verse 텍스트 순회
  2. 특수문자 및 구두점 제거
  3. 소문자 변환
  4. 단어 분리 (whitespace 기준)
  5. 빈도수 카운트
출력: raw_words.json
```

#### Step 2: Stopword Filtering
```
입력: raw_words.json
처리:
  1. 영어 불용어(stopwords) 제거
     - 관사: a, an, the
     - be 동사: is, am, are, was, were, be, been, being
     - 조동사: will, would, shall, should, can, could, may, might
     - 대명사: I, you, he, she, it, we, they, me, him, her, us, them
     - 전치사: in, on, at, to, for, of, with, by, from
     - 접속사: and, or, but, if, because, as, when, while
     - 기타: this, that, these, those, what, which, who, whom
출력: filtered_stopwords.json
```

#### Step 3: Proper Noun Filtering
```
입력: filtered_stopwords.json + NIV_Bible.json (원본 참조)
처리:
  1. 원본에서 대문자로 시작하는 패턴 분석
  2. 문장 시작이 아닌 위치에서 대문자로 등장하는 단어 = 고유명사 후보
  3. 성경 인명/지명 목록과 대조 (외부 데이터 활용)
     - 인명: Adam, Eve, Abraham, Moses, David, Jesus, Paul...
     - 지명: Eden, Egypt, Israel, Jerusalem, Babylon...
  4. NER(Named Entity Recognition) 라이브러리 활용 가능
출력: filtered_proper_nouns.json
```

#### Step 4: Final Processing
```
입력: filtered_proper_nouns.json
처리:
  1. 숫자만 있는 항목 제거
  2. 1-2글자 단어 제거 (선택적)
  3. 빈도수 기준 정렬
  4. 빈도 순위(rank) 부여
출력: step4_vocabulary.json
```

#### Step 5: Sentence Extraction (선택)
```
입력: step4_vocabulary.json + 원본 성경
처리:
  1. 각 단어별 예문 추출 (2-5개)
  2. 다양한 성경 책에서 추출
출력: step5_vocabulary_with_sentences.json, step5_sentences.json
```

#### Step 6: Add Definitions
```
입력: step5_vocabulary_with_sentences.json
처리:
  1. Claude API로 발음기호/한글 발음/한국어 뜻 생성
  2. 배치 처리 (50개/요청) + 병렬 처리
출력: final_vocabulary.json
요구사항: Claude CLI 설치 필요
```

#### Step 7: Validate Definitions
```
입력: final_vocabulary.json
처리:
  1. IPA 발음기호 형식 검증
  2. 한글 발음 검증 (원어 혼입 감지)
  3. Free Dictionary API로 샘플 검증
출력: 검증 리포트 (콘솔 출력)
```

#### Step 8: Translate Sentences
```
입력: step5_sentences.json
처리:
  1. Claude API로 예문 한글 번역
  2. 배치 처리 + 병렬 처리
출력: final_sentences_korean.json
요구사항: Claude CLI 설치 필요
```

#### Step 9: Validate Translations
```
입력: final_sentences_korean.json
처리:
  1. 빈 번역 검출
  2. 영어 단어 포함 여부
  3. 참조 패턴 포함 여부 (예: "(창세기 1:1)")
  4. 길이 비율 이상 검출
출력: 검증 리포트 (콘솔 출력)
```

### 2.3 최종 출력 형식

#### final_vocabulary.json (단어장)
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
      "sentence_ids": ["psalms-18-1", "..."],
      "ipa_pronunciation": "[lɔːrd]",
      "korean_pronunciation": "로드",
      "definition_korean": "주인, 영주, 주님"
    }
  ]
}
```

#### final_sentences_korean.json (예문 + 번역)
```json
{
  "metadata": {
    "source": "New International Version",
    "total_sentences": 15177,
    "korean_translations_added": true
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

### 2.4 기술 스택

| 구성요소 | 기술 | 이유 |
|---------|------|------|
| 언어 | Python 3.11+ | 데이터 처리, NLP 라이브러리 풍부 |
| NLP | NLTK / spaCy | Stopwords, NER |
| 데이터 | JSON | 입출력 형식 통일 |

### 2.5 파이프라인 구조

```
pipeline/
├── run_pipeline.py           # 전체 파이프라인 실행
├── scripts/
│   ├── config.py             # 설정 (경로, 옵션)
│   ├── utils.py              # 공통 유틸리티
│   ├── translation_utils.py  # 번역 유틸리티
│   ├── extract_words.py      # Step 1: 단어 추출
│   ├── filter_stopwords.py   # Step 2: 불용어 제거
│   ├── filter_proper_nouns.py # Step 3: 고유명사 제거
│   ├── finalize.py           # Step 4: 최종 처리
│   ├── extract_sentences.py  # Step 5: 예문 추출
│   ├── add_definitions.py    # Step 6: 발음/뜻 생성
│   ├── validate_definitions.py # Step 7: 정의 검증
│   ├── translate_sentences.py  # Step 8: 예문 번역
│   ├── validate_translations.py # Step 9: 번역 검증
│   └── retry_missing_translations.py # 번역 재시도
├── data/{version}/           # 버전별 필터 데이터
├── configs/{version}.json    # 버전별 설정
└── output/{version}/         # 버전별 출력
```

---

## 3. Phase 2: 단어장 앱 (추후 계획)

### 예상 기능
- 단어 목록 표시 (빈도순, 알파벳순)
- 단어 검색
- 플래시카드 학습
- 퀴즈 기능
- 학습 진도 추적

### 기술 스택 후보
- **Web**: React / Next.js
- **Mobile**: React Native / Flutter
- **Backend**: Node.js / Python FastAPI

---

## 4. 작업 체크리스트

### Phase 1: Pipeline ✅ 완료

- [x] Python 환경 설정 (requirements.txt)
- [x] extract_words.py 구현 (Step 1)
- [x] filter_stopwords.py 구현 (Step 2)
- [x] filter_proper_nouns.py 구현 (Step 3)
- [x] 성경 고유명사 목록 수집
- [x] finalize.py 구현 (Step 4)
- [x] run_pipeline.py 구현
- [x] extract_sentences.py 구현 (Step 5)
- [x] add_definitions.py 구현 (Step 6)
- [x] validate_definitions.py 구현 (Step 7)
- [x] translate_sentences.py 구현 (Step 8)
- [x] validate_translations.py 구현 (Step 9)
- [x] 멀티 버전 지원 구조 개선
- [x] 테스트 및 검증
- [x] 결과물 리뷰 및 수동 검수

### Phase 2: App

- [ ] 앱 기술 스택 결정
- [ ] UI/UX 설계
- [ ] 개발 및 테스트
- [ ] 배포

---

## 5. 고려사항 및 결정 사항

### 고유명사 처리 ✅
- **채택**: 하이브리드 방식 (자동 + 수동 검수)
- 대문자 패턴 분석 + proper_nouns.txt 목록 사용
- protected_words.txt로 보호단어 유지 (lord, god, king 등)

### 단어 형태 처리 ✅
- **채택**: Lemmatization 적용
- NLTK WordNetLemmatizer 사용
- loving, loved, loves → love

### 최소 빈도 기준 ✅
- **채택**: 2회 이상 등장 단어만 포함
- 최소 단어 길이: 2글자

---

## 6. 결과물 (NIV 기준)

| 항목 | 수치 |
|------|------|
| 고유 단어 수 (Step 1) | 9,641개 |
| 불용어 제거 후 (Step 2) | 9,471개 |
| 고유명사 제거 후 (Step 3) | 6,625개 |
| 최종 단어장 (Step 4) | 4,930개 |
| 예문 수 (Step 5) | 15,177개 |
| 가장 많이 등장하는 단어 | lord, say, come, go, people |
