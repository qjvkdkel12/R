df_mid <- data.frame(english = c(90,80,60,70),
                     math = c(50,60,100,20),
                     class = c(1,1,2,2))
df_mid

# write.csv()를 이용하여 데이터 프레임을 csv로 저장하기
write.csv(df_mid, file = "df_mid.csv")


# save를 이용하여 데이터 프레임을 RData 파일로 저장하기.
save(df_mid, file = "df_mid.rda")


rm(df_mid) # rm()를 이용하면 데이터 삭제 가능.
df_mid

# load()를 이용한 Rdata파일 불러오기.
load("df_mid.rda")
df_mid
