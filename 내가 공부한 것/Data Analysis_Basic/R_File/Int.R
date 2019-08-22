df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))
df

df$var_sum <- df$var1 + df$var2 #df안에 var_num데이터를 넣고, var1하고 var2를 더해서 var_num 에다가 넣는다.
df

df$var_mean <- (df$var1 + df$var2)/2 # 통합 연비 변수 생성

df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)
