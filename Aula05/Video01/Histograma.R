# Histograma

#carregar pacotes
install.packages("ggplot2")
library(ggplot2)

#inserindo os dados: 
load(file = "temp.RData")

#Verificando os dados:
head(temp)

#estatistica descritiva
summary(temp)

#transformando o tipo de variavel
temp<-transform(temp, TA=as.numeric(TA),UR=as.numeric(UR),VV=as.numeric(VV),TSR=as.numeric(TSR),TSM=as.numeric(TSM),TST=as.numeric(TST))


#Criando histograma
ggplot(data = temp) + geom_histogram(aes(x = TSM))

#Paleta de cores
ggplot(data = temp) + geom_histogram(aes(x = TSM), color = "black", fill = "green", bins = 15)

#Alterando o plano de fundo
ggplot(data = temp) + geom_histogram(aes(x = TSM), color = "blue", fill = "yellow", bins = 15) + theme_classic()


#Incluindo informações no histograma
ggplot(data = temp) + geom_histogram(aes(x = TSM), color = "black", fill = "pink", bins = 15) +
    labs(x = "Temperatura superficial",y = "Frequencia") + 
    theme_classic()

#Forma mais simples de fazer histograma
hist(temp$TSM,col = "green", main = "Distribuição da Temperatura Corporal", 
     xlab = "Faixas de Temperaturas (°C)",ylab = "Frequência")

