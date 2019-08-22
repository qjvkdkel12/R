# 1. 데이터 준비, 패키지 준비
mpg <- as.data.frame(ggplot::mpg) # 데이터 불러오기
library(dplyr) # dplyr 실행
library(ggplot2) # ggplot2 실행

# 2. 데이터 파악
head(mpg) # 데이터 앞부분 6행까지
tail(mpg) # 데이터 뒷부분 6행까지
View(mpg) # 데이터 뷰어 창에서 확인
dim(mpg) # 몇행, 몇열인지 확인
str(mpg) # 데이터 속성확인
summary(mpg) # 요약 통계량 

# 3. 변수명 수정
mpg <- rename(mpg, company = manufacturer)

# 4. 파생변수 생성
mpg$total <- (mpg$cty + mpg$hwy)/2 # 변수 조합
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")

# 5. 빈도 확인
table(mpg$test) # 빈도표 출력
qplot(mpg$test) # 맥대 그래프 생성 