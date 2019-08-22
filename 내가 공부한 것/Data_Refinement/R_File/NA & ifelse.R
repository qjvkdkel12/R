# exam에 3, 8, 15행은 결측치인데 평균값으로 대체하기.
mean(exam$math, na.rm = T) # 결측치를 제외하고 math 평균 산출

# 평균값을 구했으니 ifelse를 사용해 NA 값을 평균값으로 대체하자.
exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math가 NA면 55로 대체
table(is.na(exam$math)) # 결측치 빈도표 생성
