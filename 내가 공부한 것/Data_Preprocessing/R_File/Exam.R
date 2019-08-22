# 1, 3, 5반에 해당하면 출력
exam %>% filter(class == 1 | class == 3 | class == 5)

# class가 1인것만 추출해서 내가 만든 class1에 대입
class1 <- exam %>% filter(class == 1)
# class가 2인것만 추출해서 내가 만든 class2에 대입
class2 <- exam %>% filter(class == 2)

mean(class1$math) # class1안에 math의 평균 구하기
mean(class2$math) # class2안에 math의 평균 구하기

