# 중간고사 데이터 생성
test1 <- data.frame(id = c(1, 2, 3, 4, 5),
                    midterm = c(80, 70, 90, 75, 100))

# 기말고사 데이터 셍성
test2 <- data.frame(id = c(1, 2, 3, 4, 5),
                    final = c(70, 60, 80, 90, 100))
test1 # test1 출력
test2 # test2 출력

# 가로로 데이터 합치기
total <- left_join(test1, test2, by = "id") # id를 기준으로     합쳐 total에 할당
total # total 출력


