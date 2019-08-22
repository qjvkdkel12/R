# class가 1인 형만 추출한다음, english추출
exam %>% filter(class == 1) %>% select(english)

# 가독성 있게 줄 바꾸기

exam %>% 
  filter(class == 1) %>% # class가 1인 행 추출
  select(math) # math추출

# 일부만 추출하기

exam %>% 
  select(id, math) %>% # id, math 추출
  head() # 앞부분 6행까지 추출
