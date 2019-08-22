# 대한민국 시도별 인구 단계 구분도를 위한 kormaps2014패키지를 이용하기 위한 stringi 패키지 설치
install.packages("stringi")

# install_github()를 이용해 책에 공유한 kormaps2014를 설치하고 로드해보자.
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)

# kormaps2014에는 몇 가지 종류의 지역별 인구통계 데이터가 들어있다. korpop1 데이터를 이용해 시도별 인구 단계구분도를 만들어보자.

# 먼저 str()로 변수를 살펴보고, kormaps2014의 changeCode()를 이용해 인코딩을 CP949로 변경하자.
str(changeCode(korpop1))

library(dplyr)
korpop1 <- rename(korpop1,
                  pop = 총인구_명,
                  name = 행정구역별_읍면동)

# kormpa1을 지도 데이터로 이용해보자.
str(changeCode(kormap1))

# korpop1의 시도별 인구와 kormap1의 시도별 위경도 데이터를 이용해 단계 구분도를 만들어 보자.
ggChoropleth(data = korpop1, # 지도에 표현할 데이터
             aes(fill = pop, # 색깔로 표현할 변수
                 map_id = code, # 지역 기준 변수
                 tooltip = name), # 지도 위에 표시할 지역명
             map = kormap1, # 지도 데이터
             interactive = T) # 인터랙티브

# kormaps2014 패키지에는 지역별 결핵 환자 수에 대한 정보를 담고 있는 tbc 데이터가 있다. 이번에는 tbc 데이터의 NewPts(결핵 환자 수) 변수를 이용해 결핵 환자 수 단계 구분도를 만들어 보자.
str(changeCode(tbc))

ggChoropleth(data = tbc, # 지도에 표현할 데이터
             aes(fill = NewPts, # 색깔로 표현할 변수
                 map_id = code, # 지역 기준 변수
                 tooltip = name), # 지도 위에 표시할 지역명
             map = kormap1, # 지도 데이터
             interactive = T) # 인터랙티브
