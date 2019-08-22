# 수학점수가 90점 이상이거나 영어점수가 90점 이상인경우
exam %>% filter(math >= 90 | english >= 90)

# 영어점수가 90점 미만이거나 과학점수가 50점 미만인경우
exam %>% filter(english <= 90 | science <= 50)
