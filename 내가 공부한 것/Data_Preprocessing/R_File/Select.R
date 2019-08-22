exam %>% select(math) # math만 추출

exam %>% select(english) # english만 추출출

exam %>% select(class, math, english) # 여러 변수 추출

exam %>% select(-math) # math 제외

exam %>% select(-math, -class, -english) # 여러 변수 제외
