# na.rm을 사용하면 결측치가 있는 데이터도 연산 결과가 출력된다.
# na.rm은 "결측치를 제거하라(NA Remove)이다"

mean(df$score, na.rm = T) # 결측치를 제외하고 평균 산출
sum(df$score, na.rm = T) # 결측치를 제외하고 합계 산출

