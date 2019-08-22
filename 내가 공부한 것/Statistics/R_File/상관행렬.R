# 여러 변수의 관련성을 한 번에 알아보고자 할 경우, 모든 면수의 상관 관계를 나타낸 상관행렬을 만든다. 상관행렬을 보면 어떤 변수끼리 관련이 크고 적은지 파악할 수 있다. mtcars 데이터를 이용해 상관행렬을 만들어보자. 자동차 32종의 11개 속성에 대한 정보를 담고있는 데이터다.

# cor()를 이용하면 상관행렬을 만들 수 있다. 만들고나서 소수점 셋째자리에서 반올림해 출력하자.
head(mtcars)

car_cor <- cor(mtcars) # 상관행렬 생성
round(car_cor, 2) # 소수점 셋째 자리에서 반올림해 출력

# 여러 변수로 상관행렬을 만들면 너무 많은 숫자로 구성되기 때문에 파악하기 쉽지않다. 이럴 때 corrplot 패키지의 corrplot()를 이용해서 히트맵으로 만들자
install.packages("corrplot")
library(corrplot)

corrplot(car_cor) # 상관계수가 클수럭 원의 크기가 크고 색깔이 진하다. 양수면 파란색, 음수면 빨간색 계열로 표현되어있다.

# corrplot()의 파라미터를 이용해 그래프 형태를 바꿀 수 있고 method에 number를 지정해 원 대신 상관계수가 표현되게 설정하자.
corrplot(car_cor, method = "number")

#