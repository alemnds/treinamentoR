#Gráfico de Barras - Boxplot

#Tipos de Váriaveis: Qualitativa (categoricas) e Quantitativa (discreta e continua)
#Qualitativa (categóricas: ordinais e norminais) - Gráficos de Setores, Barras, Tabelas de Frequencia
#Quantitativa (discreta e continua) - Boxplot, Gráfico de barras, linhas, dispersão, histograma

install.packages("plotly")

#Carregar pacotes
library(plotly)
library(ggplot2)

str(temp)
temp<-transform(temp, TA=as.numeric(TA),UR=as.numeric(UR),VV=as.numeric(VV),TSR=as.numeric(TSR),TSM=as.numeric(TSM),TST=as.numeric(TST))

attach(temp)

head(temp)

#breve análise descritiva dos dados
summary(temp)

#criando boxplot
boxplot(TSR,TSM,TST)

#Inserindo informações boxplot
boxplot(TSR,TSM,TST,main = "Distribuição da temperatura superficial", 
        ylab = "Temperatura Corporal",
        xlab = "Variáveis", col = "green")

#Girando o bloxplot
boxplot(TSR,TSM,TST,main = "Distribuição da temperatura superficial", 
        ylab = "Temperatura em C",
        xlab = "Temperatura Corporal", col = "green",horizontal = TRUE)
