# 데이터 불러오기
txt <- readLines("Hiphop.txt") # txt 파일 불러오기
head(txt)

# 특수문자가 포함되어 있으면 오류가 발생할수 있으니까, 특수문자 제거하기
install.packages("stringr")
library(stringr)

# 특수문자 제거
txt <- str_replace_all(txt, "\\W", " ") # \\W는 특수문자를 의미하는 정규표현식이다. 