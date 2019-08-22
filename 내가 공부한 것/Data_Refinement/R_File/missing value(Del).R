# 결측치 제거하는 법

library(dplyr) # dplyr 패키지 로드
df %>% filter(is.na(score)) # score가 NA인 데이터만 출력

df %>% filter(!is.na(score)) # !를 사용해서 결측치가 아닌 score의 데이터를 보이기

df_nomiss <- df %>% filter(!is.na(score)) # score의 결측치를 제거해서    df_nomiss에 대입한다.

mean(df_nomiss$score) # df_nomiss안에 score의 평균

sum(df_nomiss$score) # df_nomiss안에 score의 합계

df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex)) # score, sex의 결측치를 제거해서 df_nomiss에 대입
df_nomiss


# 결측치가 하나라도 있으면 제거하기
df_nomiss2 <- na.omit(df)
df_nomiss2
