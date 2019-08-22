# 1반이면서 수학점수가 50점 이상인경우
exam %>% filter(class == 1 & math >= 50)

# 2반이면서 영어점수가 80점 이상인경우
exam %>% filter(class == 2 & english >= 80)
