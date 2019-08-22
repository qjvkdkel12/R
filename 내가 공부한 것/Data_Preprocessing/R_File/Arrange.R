exam %>% arrange(math) # math 오름차순 정렬
exam %>% arrange(desc(math)) # math 내림차순 정렬

exam %>% arrange(math, class) # class, math 오름차순 정렬

exam %>% arrange(desc(math, class)) # math, class 내림차순
