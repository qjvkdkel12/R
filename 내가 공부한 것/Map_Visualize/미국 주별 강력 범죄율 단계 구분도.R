# 단계 구분도를 위한 패키지 설치, 실행
install.packages("ggiraphExtra")
library(ggiraphExtra)

# R에 내장된 USarrests 데이터는 1973년 주 별 강력 범죄율 정보를 담고있다. 이 데이터를 이용해 지도를 만들어 보자.
head(USArrests)

# 이 데이터는 지역명 변수가 없고 행 이름이 지역명으로 되어있다. tibble 패키지의 rownames_to_column()을 이용해 행 이름을 state로 바꿔서 데이터 프레임을 만들어 보자,
library(tibble)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state) # tolower()를 이용해서 state의 값을 소문자로 수정하기

str(crime)

# R에 내장된 maps 패키지에 미국 주별 위경도를 나타낸 state 데이터가 들어있다. ggplot 패키지의 map_data()를 이용해 데이터 프레임 형태로 불러오자,
library(ggplot2)
states_map <- map_data("state")

#install.packages("maps")
str(states_map)

# ggiraphExtra 패키지의 ggChorpleth()를 이용해서 단계 구분도를 만들어보자.
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map)
#install.packages("mapproj")

# interactive 파라미터를 TRUE로 설정하면, 마우스 움직임에 반응하는 인터랙티브 단계로 만들 수 있다.
ggChoropleth(data = crime,
             aes(fill = Murder,
                 map_id = state),
             map = states_map,
             interactive = T)
