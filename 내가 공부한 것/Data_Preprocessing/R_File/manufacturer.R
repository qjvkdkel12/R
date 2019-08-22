library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

mpg %>% 
  group_by(manufacturer, drv) %>% # 회사별, 구동 방식별 분리
  summarise(mean_cty = mean(cty)) %>% # cty 평균 산출
  head(10) # 일부 출력