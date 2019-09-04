---
title: "일주일간 치킨집 통화건수에 대한 데이터 분석"
output:
  html_document:
    df_print: paged
---

### 분석을 위한 라이브러리 실행


```r
library(ggplot2)
library(plyr)
library(dplyr)
library(readxl)
library(knitr)
```

#### CSV파일 출처 : [https://www.bigdatahub.co.kr/product/view.do?pid=1002160]


### 엑셀파일 불러오기 및 일부출력


```r
Data <- read.csv("치킨집 데이터.csv")
head(Data, n = 6)
```

### Data 변수에서 필요한 것만 추출

#### 통화건수의 평균과 남녀가 각각 몇명이 있는지 확인

```r
mean(Data$통화건수) # 평균은 13
table(Data$성별) # 남자는 2957명, 여자는 3169명이 있다.
```


#### 통화건수의 평균보다 높거나 작은 것을 다른 변수에 대입

```r
Data_1 <- Data[Data$통화건수 >= 13,] # 통화건수가 평균(13) 보다 높은 것을 Data_1에 대입
Data_2 <- Data[Data$통화건수 <= 13,] # 통화건수가 평균(13) 보다 낮은 것을 Data_2에 대입
head(Data_1, 3) # 일부 3열 추출
head(Data_2, 3) # 일부 3열 추출```
```


### 통화건수를 오름차순 및 내림차순 정렬

```r
Data_1 <- Data_1[c(order(-Data_1$통화건수)),] # 데이터 앞에 - 를 붙여서 내림차순으로 정렬
Data_2 <- Data_2[c(order(Data_2$통화건수)),] # 통화건수를 order()함수 를 이용해서 오름차순으로 정렬
```



```r
head(Data_1, 3) # 출력
head(Data_2, 3) # 출력
```


### 상위 100개

```r
Top1_100 <- head(Data_1, 100)
Top2_100 <- head(Data_2, 100)
```

### 행 번호가 거슬리니 초기화를 하자

```r
rownames(Data_1) <- NULL # 행 자동정렬
rownames(Data_2) <- NULL # ''
rownames(Top1_100) <- NULL # ''
rownames(Top2_100) <- NULL # ''
```


### 그래프로 표현하기



```r
ggplot(data = Top1_100, aes(x = 읍면동)) + geom_bar()
```

![plot of chunk unnamed-chunk-35](figure/unnamed-chunk-35-1.png)


