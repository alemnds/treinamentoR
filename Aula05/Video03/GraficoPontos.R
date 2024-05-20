#Gráfico de pontos
library(ggplot2)

#inserindo os dados: 
load(file = "temp.RData")

#estatistica descritiva
summary(temp)

#transformando o tipo de variavel
temp<-transform(temp, TA=as.numeric(TA),UR=as.numeric(UR),VV=as.numeric(VV),TSR=as.numeric(TSR),TSM=as.numeric(TSM),TST=as.numeric(TST))

#Criando o gráfico de pontos
ggplot(temp) + geom_point(aes(x = TA, y = TSR))

#Incluindo o argumento size:
ggplot(temp) + geom_point(aes(x = TA, y = TSR, size = UR))

#Incluindo o argumento color:
ggplot(temp) + geom_point(aes(x = TA, y = TSR, size = UR, color = VV))

#Incluindo informações:
ggplot(temp) + geom_point(aes(x = TA, y = TSR, size = UR, color = VV)) +
  labs(title = "Diagrama de Dispersão", x="Temperatura do ar", y="TS do animal em repouso") + theme_bw()

#Incluindo linha no gráfico:
ggplot(temp) + geom_point(aes(x = TA, y = TSR)) +
  geom_smooth(aes(x=TA, y=TSR), method = loess, se = FALSE) +
  labs(x="Temperatura do ar", y="TS do animal em repouso") + theme_bw()

