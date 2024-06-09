#Breve comentário sobre regressão linear (simples ou múltipla)

#Verificar a relação entre o comportamento de uma variavel dependente e explicativa
#relação não quer dizer casualidade (causa e efeito)

#Critérios de aplicação:
# 1) mínimos quadrados (soma dos residuos = 0)
# 2) a variavel dependente preferencialmente apresentara distribuição normal
# (caso contrário = regressão não linear)
# 3) a váriavel dependente deve ser quantitativa

#Sobre o modelo de regressão linear simples
# y = a +b1x1 + e, em que:
# y = variavel dependente
# a = constante (coeficiente linear)
# b = coeficiente angular
# x = variavel explicativa
# e = erro (ou residuo)

#Modelo de preditivo de regressão linear simples
# ^y = a + b1x1

#Sobre o modelo de regressão linear múltipla
# y = a + b1x1 + b2x2 + ...+ bnxn + e, em que
# y = váriavel dependente; a = constante (coeficiente linear);
# b = coeficiente angular, 
# x1 = variavél explicativa 1 ~xn = variavel explicativa n;
# e = erro (ou residuo)

#Modelo de preditico de regressão linear múltipla
# ^y = a + b1x1 + b2x2 + ... +  bnxn


#Regressão linear simples - 1 exemplo
# ^y = a b1x1

#Objetivo: avaliar a qualidade da carne suína em função da temperatura da carcaça
#parametro: nivel de sig = 5%

#Carregar os pacotes
library(plotly)
library(tidyverse)
library(PerformanceAnalytics)
library(nortest)
library(olsrr)
library(car)

#Carregar o banco de dados:
load("quali2.Rdata")
View(quali2)

#Transformando em variaveis quantitativas
quali2<-transform(quali2,pH=as.numeric(pH),TC=as.numeric(TC))

#Analisando as váriaveis
summary(quali2)

#Matriz de correlação
cor(quali2)

#Modelo de regressão linear
regress1<- lm(formula = pH ~ TC, data = quali2)

summary(residuals(regress1))
summary(regress1)

#^y =  a + b1x1
# qualidade da carne(pH) = 11.655404 - 0.144768 x TC

#Analisando o IC com o comando confint
confint(regress1,level = 0.95)

#Teste de normalidade usando Shapiro-Francia
sf.test(regress1$residuals)

# Regressão Linear Múltipla - 2 exemplo

#TC = Temperatura de carcaça, TV = Tempo de viagem
#TD = Tempo de descanso, ITU = Indice de temperatura e umidade (conforto termico do animal)

# Carregar o banco de dados:
load("quali3.Rdata")

#Transformando em variaveis quantitativas
quali3<-transform(quali3,pH=as.numeric(pH),TC=as.numeric(TC),TV=as.numeric(TV),TD=as.numeric(TD),ITU=as.numeric(ITU))

#Analisando as variaveis
summary(quali3)

#Matriz de correlação
cor(quali3)

#Modelo de regressão linear multipla:
regress2 <- lm(formula = pH ~ TC + TV + TD + ITU, data = quali3)

#analisando o modelo gerado
summary(regress2)
#^y = a + b1x1 + b2x2 + b3x3 + b4x4
#qualidade da carne(pH) = xxxxxx

#Analisando o IC com o comando confint
confint(regress2, level = 0.95)

#Procedimento stepwise para seleção do modelo:
stepwise <- stepAIC(regress2,direction = "both", trace =  FALSE)

summary(residuals(stepwise))
summary(stepwise)

#^y = a + b1x1 + b2x2 + b3x3 
#qualidade da carne(pH) = 12.251606 - 0.148204*TC - 0.010756*TD - 0.005325*ITU


#Teste de normalidade usando Shapiro-Francia
sf.test(stepwise$residuals)

#Tomada de decisão: não se pode aplicar a regressão linear para os dados
# forma que se encontra (não confiavel o modelo para modelo preditivo)

#Apenas para efeito didático, a predição a partir do modelo obtido:

predict(object = stepwise,
        data.frame(TC = 35, TD = 8.5, ITU = 75))


#Regressão Linear Múltipla - 3 exemplo
#Objetivo: avaliar o rendimento da semente em função n váriaveis Xs
#(Pv,Cvv,PGV,NGV,NVP,P100G)

#Transformando em variaveis quantitativas
prod <- transform(prod, PROD=as.numeric(PROD),PV=as.numeric(PV),CVV=as.numeric(CVV),PGV=as.numeric(PGV),
                  NGV=as.numeric(NGV),NVP=as.numeric(NVP),P100G=as.numeric(P100G))

#Analisando as variaveis
summary(prod)

#Matriz de correlação
cor(prod)

#Modelo de regressão linear multipla:
regress3 <- lm(formula = prod$PROD ~ PV + CVV + PGV + NGV + NVP + P100G, data = prod)

#Analisando o modelo gerado
summary(regress3)


#Analisando o IC com o comando confint
confint(regress3, level = 0.95)

#Procedimento stepwise para seleção do modelo:
steprod <- stepAIC(regress3,direction = "both", trace =  FALSE)

summary(steprod)


#^y = -3544.252  +  40.550*CVV + 103.687*NGV + 176.184*NVP + 80.455*P100G
#rendimento da semente (PROD) =  -3544.252  +  40.550*CVV + 103.687*NGV + 176.184*NVP + 80.455*P100G

#Teste de normalidade usando Shapiro-Francia
sf.test(steprod$residuals)

summary(prod)

predict(object = steprod,
        data.frame(CVV=16.5, NGV = 12, NVP = 10, P100G = 19.7))
