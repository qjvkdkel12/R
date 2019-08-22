# 1. 변수만들기, 데이터 프레임 만들기.
english <- c(90, 80, 70, 60) # 영어 점수 변수 생성
math <- c(30, 40, 10, 80) # 수학 점수 변수 생성

class_1 <- data.frame(english, math)
class_1

# 2. 데이터 프레임 한번에 하기.
class_2 <- data.frame(English <- c(90, 80, 70, 60),
                      Math <- c(30, 40, 10, 80))
class_2

# 3. 외부 데이터 이용하기.

# 엑셀 파일
library(readxl) # library 패키지 로드
df_exam <- read_excel("excel_exam.xlsx") # 엑셀 파일 불러오기
df_exam

# csv 파일
df_csv_exam <- read.csv("csv_exam.csv") # csv 파일 불러오기
write.csv(df_mid, file = "df_mid.csv") # 저장
df_csv_exam

# Rda 파일
load("df_mid.rda") # rda 파일 불러오기 
save(df_mid, file = "df_mid.rda") 
