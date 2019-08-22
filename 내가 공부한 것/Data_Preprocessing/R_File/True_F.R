library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

exam %>% filter(class == 1) # exam에서 class가 1인 것만 출력

exam %>% filter(class == 2)

exam %>% filter(class != 1) # 1이 아닌것만 출력

exam %>% filter(class != 3) # 3이 아닌것만 출력
