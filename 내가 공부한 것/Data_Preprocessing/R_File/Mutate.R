# 파생변수 추가
exam %>% 
  mutate(total = math + english + science) %>% # 총합 변수
  head(10) # 데이터 일부 추출


# 여러 파생변수 추가
exam %>% 
  mutate(total = math + english + science,
         (mean = math + english + science)/3) %>% 
  head(10)


# mutate()에 ifelse() 적용하기
exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head(10)

#library(dplyr)
