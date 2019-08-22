df_exam <- read_excel("excel_exam.xlsx") # 엑셀 파일을 불러와서 df_exam에 할당
df_exam # 출력 

mean(df_exam$english) # df_exam안에 있는 english 평균분석
mean(df_exam$math)

max(df_exam$science)
min(df_exam$math)

df_exam_novar <- read_excel("excel_exam.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam.xlsx", col_names = F) # F는 참(T), 거짓(F)중에 거짓이다. 여기서는             "열 이름을 가져올 것인가?" 라는질문에 "아니요" 라고       대답한거다.
df_exam_novar
