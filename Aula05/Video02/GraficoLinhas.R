#Gráfico de linhas

install.packages("ggplot2")
install.packages("plotly")
library(ggplot2)
library(plotly)


#inserindo o banco de dados

#analisando o banco de dados
str(glinha)

#breve análise descritiva dos dados
summary(glinha[,2])

#transformando o tipo de variavel
glinha<-transform(glinha, Ano=as.numeric(Ano),SM=as.numeric(SM))

#Criando o grafico de linhas
ggplot(glinha) + geom_line(aes(x = Ano, y = SM))

#Argumento de diferenciação
ggplot(glinha) + geom_line(aes(x = Ano, y = SM, color = SM > 500))

#Inserindo informações
ggplot(glinha) + 
  geom_line(aes(x = Ano, y = SM)) + 
  geom_point(aes(x = Ano, y = SM)) +
  labs(x = "Período de 2001 a 2021",
       y = "Salário Mínimo") + 
  theme_dark()
