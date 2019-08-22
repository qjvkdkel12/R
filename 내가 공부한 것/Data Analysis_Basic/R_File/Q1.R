문제1 = "1. ggplot2() 패키지의 mpg 데이터를 사용하기위한            복사본 만들기.                                             2. 복사본 데이터를 이용해 cty는 city로, hwy는                 highway로 수정.                                         3. 데이터 일부를 출력해 변수명이 바꼈는지 확인."

mpg_new <- mpg

rename(mpg_new, city = cty, highway = hwy)

mpg_new
