exam <- read.csv("csv_exam.csv") # csv파일을 불러와서 exam에 넣기

exam[c(3, 8, 15), "math"] <- NA # exam에 있는 3, 8, 15행의 math에 NA할당
exam

# exam의 math는 결측치를 포함하고 있기때문에 NA가 출력된다.
exam %>% summarise(mean_math = mean(math)) # math 평균 산출 (NA)

# math 결측치를 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))
 ㅠ