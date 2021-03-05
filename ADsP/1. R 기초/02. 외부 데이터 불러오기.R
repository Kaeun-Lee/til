# 1. R 기초

# 02. 외부 데이터 불러오기 ----

# 1) csv 파일 불러오기 ----
# header=T 옵션 : csv 파일의 첫 줄을 변수명으로 지정
read.csv("D:\\DATA\\traffic_death.csv", header=T)


# 2) txt 파일 불러오기 ----
# Sep=',' 옵션 : 데이터가 쉼표로 구분된 파일임을 지정
# header=F가 기본
read.table("D:/DATA/traffic_death.txt", header=T, Sep=",")


# 3) 엑셀 파일 불러오기 ----
# ★★ 엑셀 파일을 csv 파일 형식으로 저장하여 불러오는 것을 추천
install.packages("RODBC")
library(RODBC)
new <- odbcConnectExcel("D:/DATA/traffic_death")
yourdata <- sqlFetch(new,  "traffic_death")
yourdata