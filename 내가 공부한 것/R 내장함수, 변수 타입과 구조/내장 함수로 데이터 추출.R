# 아래 파일을 활용해 내장 함수로 데이터를 추출하는 방법
exam <- read.csv("csv_exam.csv")

exam[} # 조건 없이 전체 데이터 출력

exam[1,] # 1행 출력

exam[2,] # 2행 출력

exam[exam$class == 1,] # 클래스가 1인 행 출력

exam[exam$math >= 80,] # 수학 점수가 80점 이상인 행 출력

# 1반 이면서 수학 점수가 50점 이상
exam[exam$class & exam$math >= 50,]

# 영어 점수가 9-점 미만이거나 과학 점수가 50점 미만
exam[exam$english | exam$science < 50,]

exam[,1] # 첫 번째 열 출력
exam[,2] # 두 번째 열 출력
exam[,3] # 세 번째 열 출력

exam[, "class"] # class 변수 추출

exam[, "math"] # math 변수 추출

# c()를 이용하면 여러 변수를 동시에 추출이 가능하다.
exam[,c("class", "math", "english")] # class, math, english 변수 추출


 # 행, 열 모두 인덱스
exam[1,3]

# 행 인덱스, 열 변수명
exam[5, "english"]

# 행 부등호 조건, 열 변수명
exam[exam$math >= 50, "english"]

# 행 부동호 조건, 열 변수명
exam[exam$math >= 50, c("english", "science")]
