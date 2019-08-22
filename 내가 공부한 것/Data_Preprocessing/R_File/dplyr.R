# 기능 | dplyr 함수
# 회사별로 분리 | group_by()
# suv 추출 | filter()
# 통합 연비 변수 생성 | mutate()
# 통합 연비 평균 산출 | summarise()
# 내림차순 정렬 | arrange()
# 1~5위까지 출력 | head()



mpg %>% 
  group_by(manufacturer) %>% # 회사별로 분리
  filter(class == "suv") %>% # suv 추출
  mutate(tot = (cty+hwy)/2) %>%  # 통합 연비 변수 생성
  summarise(mean_tot = mean(tot)) %>% # 통합 연비 평균 산출
  arrange(desc(mean_tot)) %>% # 내림차순 정렬
  head(5) # 1~5위까지 출력
