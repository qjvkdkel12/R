# 이상치 제거하기
outlier <- data.frame(sex = c(1, 2, 1, 3, 2, 1),
                      score = c(5, 4, 3, 4, 2 ,6))
outlier


# table()을 이용해서 이상치 확인하기
table(outlier$sex)
table(outlier$score)

#변수에 이상치가 포함되어 있으니까 이상치를 결측치로 변환하기.        (ifelse를 이용하여 sex가 3일경우 NA를 부여한다.)
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier

#score가 5보다 크면 NA할당
outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier
