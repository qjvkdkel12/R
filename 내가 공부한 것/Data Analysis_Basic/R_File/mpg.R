install.packages("ggplot2")

# as.data.frame()는 데이터 속성을 데이터 프레임으로 바꾼다.
mpg <- as.data.frame(ggplot2 :: mpg) 
# :: 를 이용하면 특정 페키지에 들어있는 함수나 데이터 지정

head(mpg) # 데이터 앞부분 확인
tail(mpg) # 데이터 뒷부분 확인
View(mpg) # Raw 데이터를 뷰어 창에서 확인
dim(mpg) # 234행 11열 (행,열)
str(mpg) # 데이터 속성 확인
summary(mpg) # 요약 통계량 출력
