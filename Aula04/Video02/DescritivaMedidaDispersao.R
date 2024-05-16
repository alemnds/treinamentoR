#Estatistica descritiva

#Medida de dispersão (amplitude, variancia, desvio padrão, erro padrão, coeficiente)

install.packages("plotrix")

#library
library(readxl)
library(plotrix)

#Inserindo os dados 
load("temp.RData")

head(temp)

str(temp)

#Tornando variaveis acessiveis:
attach(temp)

#Amplitude (range)
range(TA)
range(UR)
range(TSR)

#desvio padrão (sd = standard deviation) = Raiz quadrada da variancia. Quando menor o valor, mais homogeneo são dados. Quando maior o valor, mais heterogeneo são os dados
sd(TA)
sd(TST)

#Erro padrão (std.error) : Quando a mostra vai se desviar da média.
std.error(TA)

#Coeficiente de variação (função) - O R não tem um comando proprio, é necessário criar uma função para esse cálculo
cv<- (sd(TA)/mean(TA))*100
cv
