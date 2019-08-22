var1 <- c(1, 2, 3, 1, 2) # numeric 변수 생성
var2 <- factor(c(1, 2, 3, 1, 2)) # factor 변수 생성

var1 # numeric 변수 출력
var2 # factor 변수 출력

var1 + 1 # numeric 변수는 연산이 가능.
var2 + 2 # factor 변수는 연산이 불가능.

# 변수 타입 확인
class(var1) 
class(var2)

levels(var1) # factor가 아닌 numeric 변수이니까 null 출력
levels(var2) 

var3 <- c("a", "b", "b", "c") # 문자 변수 생성
var4 <- factor(c("a", "b", "b", "c")) # 문자로 된 factor 변수 생성

class(var3) # 뮨자를 의미하는 character가 출력되고
class(var4) # factor가 출력된다

mean(var1) # numeric 타입이기 때문에 결과가 출력되지만
mean(var2) # factor 타입이기 때문에 결과가 출력이 안된다.

var2 <- as.numeric(var2) # numeric 타입으로 변환
mean(var2) # 함수 재 적용

class(var2) # 타입 확인

levels(var2) # 범주 확인


