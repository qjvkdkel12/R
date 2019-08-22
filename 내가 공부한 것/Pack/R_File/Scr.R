#여러 문자로 구성된 변수 생성
x <- c("a","a","b","c")
x

qplot(x)


# data에 mpg, x축에 hwy 변수를 지정해 그래프 생성
qplot(data = mpg, x = hwy)
