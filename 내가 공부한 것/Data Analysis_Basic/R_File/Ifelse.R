summary(mpg$total) # 요약 통계량 산출

hist(mpg$total) # mpg안에있는 total을 히스토그램으로 본다.

ifelse(mpg$total >= 20 , "pass", "fail") # mpg안에있는 total이 20보다 크거나 같으면 pass출력 작으면 fail출력

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20)

table(mpg$test) # 합격 판정을 받은 것은 128개                             불합격 판정을 받은 것은 106개
