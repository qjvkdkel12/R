# 시계열 그래프 만들기 (x축에는 시간을 의미하는 date, y축에는     실업자 수를 의미하는 unemploy를 지정하고, 선 그래프로 표현하기 위해  geom_line()을 추가한다.)
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()
