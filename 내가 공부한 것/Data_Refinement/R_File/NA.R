df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

is.na(df) # 결측치(null)확인 결측치는 TRUE, 결측치가 아닌 값은 FALSE로 표시된다.

table(is.na(df)) # 결측치 빈도 출력

table(is.na(df$sex)) # sex 결측치 빈도 출력

table(is.na(df$score)) # score 결측치 빈도 출력

