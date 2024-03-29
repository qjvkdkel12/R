# ggplot2 함수 요약
# geom_point() : 산점도
# geom_col() : 막대 그래프 - 요약표
# geom_bar() : 막대 그래프 - 원자료
# geom_line() : 선 그래프
# geom_boxplot() : 상자 그림

library(ggplot2) # 그래프를 그리기 위한 라이브러리 실행
library(dplyr)

## 1. 산점도
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

# 축 설정 추가
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6) + # x축을 3부터 6까지 표시
  ylim(10, 30) # y축을 10부터 30까지 표시

## 2. 평균 막대 그래프

# 1단계. 평균표 만들기
df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

# 2단계. 그래프 생성하기, 크기순 정렬하기
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy),
                          y = mean_hwy)) + geom_col()

## 3. 빈도 막대 그래프
ggplot(data = mpg, aes(x = drv)) + geom_bar()

## 4. 선 그래프
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()

## 5. 상자 그림
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()
