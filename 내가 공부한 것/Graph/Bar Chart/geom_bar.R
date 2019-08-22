# 빈도 막대 그래프를 만드려면 geom_col()대신 geom_bar()를 사용한다.
# 빈도 마대 그래프는 y축 없이, x축만 지정한다.
ggplot(data = mpg, aes(x = drv)) + geom_bar()

# x축에 연속 변수를 입력하면 변수의 분포를 나타낸 빈도 막대 그래프가 생성된다.
ggplot(data = mpg, aes(x = hwy)) + geom_bar()
