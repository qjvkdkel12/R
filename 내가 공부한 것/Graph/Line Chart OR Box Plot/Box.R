# 상자 그림 만들기. (x축을 drv, y축을 hwy로 지정한 후 geom_boxplot()를 추가하여 상자그림으로 표현한다.
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

