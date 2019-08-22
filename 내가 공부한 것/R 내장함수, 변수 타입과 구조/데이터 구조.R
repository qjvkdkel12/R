# 벡터 만들기
a <- 1 
a

b <- "hello"
b

# 데이터 구조 확인
class(a)
class(b)

# 데이터 프레임 만들기
x1 <- data.frame(var1 = c(1, 2, 3),
                 var2 = c("a", "b", "c"))
x1

# 데이터 구조 확인
class(x1)

# 매트릭스 만들기 - 1~12로 2열
x2 <- matrix(c(1:12), ncol = 2)
x2

# 데이터 구조 확인
class(x2)

# array 만들기 - 1~20으로 2행 X 5열 X 2차원
x3 <- array(1:20, dim = c(2, 5, 2))
x3

# 데이터 구조 확인
class(x3)

# 리스트 생성 - 앞에서 생성한 데이터 구조 활용 (모든 데이터 프레임을 가지고있다.)
x4 <- list(f1 = a, # 벡터
           f2 = x1, # 데이터 프레임
           f3 = x2, # 매트릭스 
           f4 = x3) # 어레이

# 데이터 구조 확인
class(x4)

mpg <- ggplot2 :: mpg
x <- boxplot(mpg$cty)
x

x$stats[,1] # 요약 통계량 추출

x$stats[,1][3] # 중앙값 추출

x$stats[,1][2] # 1분위수 추출
