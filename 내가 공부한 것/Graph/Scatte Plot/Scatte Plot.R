library(ggplot2)

# x축은 displ, y축은 hwy로 지정해 배경 생성
ggplot(data = mpg, aes(x = displ, y = hwy))

# 배경에 산점도 추가 (dplyr 패키지는 %>% 으로연결하고, ggplot는 +다.)
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
