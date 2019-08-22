exam %>% summarise(mean_math = mean(math))

exam %>% 
  group_by(class) %>% # class 별로 분리
  summarise(mean_math = mean(math)) # math 평균 산출

#m_math <- mean(exam$math)
#m_math
#rm(m_math)

exam %>% 
  group_by(class) %>% # class 별로 분리
  summarise(mean_math <- mean(math), # math의 평균을          mean_math에 대입
            sum_math <- sum(math), # math의 합을 sum_math에   대입
            median_math <- median(math), # math의 중앙값을    median_math에 대입
            n = n()) # 학생 수
