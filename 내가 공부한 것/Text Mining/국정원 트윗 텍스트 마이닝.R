# 필요한 라이브러리 실행
library(KoNLP)
library(dplyr)
library(wordcloud)
library(RColorBrewer)

# 한글로 되어있는 변수명을 다루기 쉽도록 영문자로 수정하고, 특수문자를 제거한 후 일부를 출력해서 내용을 확인하자.
# 데이터 로드
twitter <- read.csv("twitter.csv",
                    header = T,
                    stringsAsFactors = F,
                    fileEncoding = "UTF-8")

# 변수명 수정
twitter <- rename(twitter,
                  no = 번호,
                  id = 계정이름,
                  date = 작성일,
                  tw = 내용)

# 특수문자 제거
#library(stringr)
twitter$tw <- str_replace_all(twitter$tw, "\\W", " ")

head(twitter$tw)


# 트윗에서 명사를 추출하고, 각 단어가 몇 번씩 사용됐는지 나타낸 빈도표를 만들어보자.

# 트윗에서 명사추출
nouns <- extractNoun(twitter$tw)

# 추출한 명사 list를 문자열 벡터로 변환, 단어별 빈도표 생성
wordcount <- table(unlist(nouns))

# 데이터 프레임으로 전환
df_word <- as.data.frame(wordcount, stringsAsFactors = F)

# 변수명 수정
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 두 글자 이상으로 된 단어를 추출하고 가장많이 사용된 단어 20개를 추출하자.

# 두 글자 이상 단어만 추출
df_word <- filter(df_word, nchar(word) >= 2)

# 상위 20개 추출
top20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)

# 어떤 단어가 많이 사용했는지 ggplot를 이용해서 빈도 막대 그래프를 만들어보자.
order <- arrange(top20, freq)$word

ggplot(data = top20, aes(x = word, y = freq)) +
  ylim(0, 2500) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limit = order) + # 빈도순 막대 정렬
  geom_text(aes(label = freq), hjust = -0.3) # 빈도 표시


# 오똔 던오거 먾아 사용됐는지 한눈에 파악하도록 워드 클라우드를 만들어보자.
pal <- brewer.pal(8, "Dark2") # 색상 목록 생성
set.seed(1234) # 난수 고정

wordcloud(words = df_word$word, # 단어
          freq = df_word$freq, # 빈도
          min.freq = 10, # 최소 단어 빈도
          max.words = 200, # 표현 단어 수
          random.order = F, # 고빈도 단어 중앙 배치
          rot.per = .1, # 회전 단어 비율
          scale = c(6, 0.2), # 단어 크기 범위
          colors = pal) # 색상 목록
