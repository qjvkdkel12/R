# 시험 성적 데이터

english <- c(90, 80, 70, 60)
english

math <- c(50, 60, 100, 20)
math


# english, math로 데이터 프레임을 생성해서 df_mid에 할당

df_mid <- data.frame(english, math)
df_mid

class <- c(1,1,2,2)
class

df_mid <- data.frame(english, math, class)
df_mid


mean(df_mid$english) # di_min의 english로 평균 산출     di_mid$english는 di_mid안에 englishq변수를 말한다. 

mean(df_mid$math)


# 데이터 프레임 한 번에 만들기.

df_mid <- data.frame(english <- c(90,20,30,40),
                     math <- c(40,20,60,10),
                     class <- c(10,20,30,40))
df_mid
