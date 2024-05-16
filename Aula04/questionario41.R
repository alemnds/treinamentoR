#Questionario 4.1

attach(pratica)
mean(UR)

str(pratica)

pratica<-transform(pratica, TA=as.numeric(TA),UR=as.numeric(UR),VV=as.numeric(VV),TSR=as.numeric(TSR),TSM=as.numeric(TSM),TST=as.numeric(TST))

#Coeficiente de variação (função) - O R não tem um comando proprio, é necessário criar uma função para esse cálculo


cv<- (sd(TA)/mean(TA))*100
cv

mean(TA)

sd(TST)

range(UR)
range(TSR)
range(TSM)

head(pratica)

sd(TA)

summary(pratica)

median(TST)
median(TA)

table(pratica$TA)
