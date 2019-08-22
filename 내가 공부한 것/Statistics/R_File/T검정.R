# t 검정(t-test)는 두 집단의 평균에 통계적으로 유의한 차이가 있는지 알아볼 때 사용하는 통계 분석 기법이다. R에 내장된 t.test()를 이용해 t검정을 할 수 있다.
# mpg 데이터를 불러와 class, cty 변수만 남긴 뒤 class 변수가 "compact"인 자동차와 "suv"자동차를 추출하자.
library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

library(dplyr)

mpg_diff <- mpg %>% 
  select(class, cty) %>% 
  filter(class %in% c("compact", "suv"))

head(mpg_diff)

table(mpg_diff$class)
table(mpg_diff$cty)

# t.test()를 이용해 t 검정을 해보자. mpg_diff 데이터를 지정하고, ~ 기호를 이용해서 비교할 값인 cty(도시연비) 와 비교할 집단인 class(자동차 종류) 를 지정하고 t 검정은 비교하는 집단의 분산(값이 퍼져 있는 정도) 이 같지 여부에따라 적용하는 공식이 다르다.
t.test(data = mpg_diff, cty ~ class, var.equal = T)

# 이번에는 일반 휘발유(R)를 사용하는 자동차와 고급 휘발유(P)를 사용하는 자동차 간 도시 연비 차이가 통계적으로 유의한지 알아보자.
mpg_diff2 <- mpg %>% 
  select(fl, cty) %>% 
  filter(fl %in% c("r", "p"))

table(mpg_diff2$fl)

t.test(data = mpg_diff2, cty ~ fl, var.equal = T)
