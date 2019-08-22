# KoNLP의 extractNoun()를 이용한 명사 추출
extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")

# 가사에서 명사 추출
nouns <- extractNoun(txt)

# 추출한 명사 list를 문자열 벡터로 변환, 단어별 빈도표 생성
wordcount <- table(unlist(nouns)) # table(unlist(nouns))는 리스트로 되어있는 nouns를 빈도 테이블로 변환하는 기능

# 데이터 프레임으로 전환
df_word <- as.data.frame(wordcount, stringsAsFactors = F)

# 변수명 수정
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

