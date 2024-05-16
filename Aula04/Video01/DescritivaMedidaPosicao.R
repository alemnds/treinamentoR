#Estatistica descritiva

#Medida de posição (media, mediana, moda)

#Medida de dispersão (amplitude, variância, desvio padrão, coeficiente)

#visualizar o banco de dados
head(temp)

#visualizar a estrutura do banco de dados
str(temp)

#TA = Temperatura do ar
#UR = Umidade relativa do ar
#VV = Velocidade do vento
#TSR = Temperatura superficial do animal em repousa
#TSM = Temperatura superficial do animal em movimento
#TST = Temperatura superficial do animal em transporte

#transformando o tipo de variavel
temp<-transform(temp, TA=as.numeric(TA),UR=as.numeric(UR),VV=as.numeric(VV),TSR=as.numeric(TSR),TSM=as.numeric(TSM),TST=as.numeric(TST))

#Media (mean)
mean(temp$TA)
mean(temp$UR)

attach(temp) #Deixa temp estanciado, não sendo mais necessário referencia-lo a partir desse momento 
mean(TA)
mean(TST)
mean(TSM)

#Mediana (median)
median(temp$TA)
median(TST)

#Moda (table) : Moda não está presente no R. Moda é o valor com maior ocorrencia dentro de uma variavel 
table(temp$TA)

summary(temp)

