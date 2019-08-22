# 다른 데이터를 활용해 변수 추가하기
name <- data.frame(class = c(1, 2, 3, 4, 5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

exam_new <- left_join(exam, name, by = "class") # exam_new에 exam, name을 넣고 class를 기준으로 삼아 가로로 합치기
exam_new
