#정형데이터 마이닝

#1 lotto데이터는 1회부터 859회가지의 로또 당첨 번호(보너스 번호를 제외한 6개의 추천번호)
#를 담고 있는 데이터이며, 변수 설명은 아래와 같다.
#변수           데이터 형태         설명
#time_id          수치형         로또 회차



lot<-read.csv("data/lotto.csv")
str(lot)

#na값이 존재하는지 확인
sum(is.na(lot))

as(lot, "transactions")


library(reshape2)


lot_melt <- melt(lot, id.vars=1)

lot_melt

lot_melt2<-lot_melt[,-2]  

str(lot_melt)


library(arules)

lot_melt2$time_id
lot_melt2value

lot_sp<-split(lot_melt2$value, lot_melt2$time_id)  #로또 추첨회차를 기준으로 당첨번호를 분리하여 lot_sp에 저장
lot_ts<-as(lot_sp, "transactions")                 #lot_sp 데이터를 트랜잭션 데이터로 변환















