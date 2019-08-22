# nchar()를 이용하여 2글자 이상이고, 자주 사용된 단어 20개 추출
df_word <- filter(df_word, nchar(word) >= 2) # df_word 중에 2글자 이상인 것만 추출

# 빈도 순으로 정렬한 후 상위 20개 단어 추출
top_20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)
