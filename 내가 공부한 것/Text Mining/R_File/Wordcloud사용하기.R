# 앞에서 만든 df_word를 이용해 워드 클라우드를 만들자. wordcloud()의 파라미터들은 클라우드의 모양을 결정하는 기능을 한다.

wordcloud(words = df_word$word, #단어 
          freq = df_word$freq, # 빈도
          min.freq = 2, # 최소 단어 빈도
          max.words = 200, # 표현 단어 수
          random.order = F, # 고빈도 단어 중앙 배치
          rot.per = .1, # 회전 단어 비율
          scale = c(4, 0.3), # 단어 크기 범위
          colors = palette()) # 색상 목록


