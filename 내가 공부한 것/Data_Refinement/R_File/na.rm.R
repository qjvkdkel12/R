# mean() 뿐만 아니라 다른 연산 함수들도 na.rm을 지원한다.

exam %>% summarise(mean_math = mean(math, na.rm = T), # 평균 산출
                   sum_math = sum(math, na.rm = T), # 합계 산출
                   median_math = median(math, na.rm = T)) # 중앙값산출

