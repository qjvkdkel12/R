# 학생 1~5번 시험 데이터 생성

group_a <- data.frame(id = c(1, 2, 3, 4, 5),
                      test = c(60, 80, 90, 70, 100))
group_a

# 학생 6~10번 시험 데이터 생성
group_b <- data.frame(id = c(6, 7, 8, 9, 10),
                      test = c(80, 75, 90, 100, 95))
group_b

group_all <- bind_rows(group_a, group_b) # 데이터를 합쳐서                group_all에 할당
group_all
