# Visualização de dados

library(ggplot2)

view(diamonds)

#Tamanho em observações e variaveis (Linhas e colunas)
dim(diamonds)

#Informações gerais da base
str(diamonds)

#Visualiza as primeiras linhas da base
head(diamonds)

#Visualiza as ultimas linhas da base
tail(diamonds)

#Grafico da relação entre x e y

ggplot(diamonds,aes(x,y))+geom_bin_2d()

library(dplyr)
library(stats)
library(base)

filter(diamonds,x==0|y==0)

diamonds_ok<- filter(diamonds,x>0,y>0,y<20)

dim(diamonds_ok)

ggplot(diamonds_ok,aes(x,y))+geom_bin_2d()


#Criação de variaveis

diamonds_ok2 <- mutate(diamonds_ok,sym=x+y,size = sqrt(x**2+y**2))
view(diamonds_ok2)

#Criação resumo de variaveis

by_clarity <- (group_by(diamonds,clarity))
sum_clarity <- summarise(by_clarity,price=mean(price))
view(sum_clarity)

ggplot(sum_clarity,aes(clarity,price))+geom_line(aes(group = 1),colour= "grey80")+
  geom_point(size=2)

#Usando funções dentro de funções

cut_depth<- summarise(group_by(diamonds,cut,depth),n = n())
view(cut_depth)

hist(cut_depth$depth)

cut_depth<- filter(cut_depth,depth>55,depth<70)

hist(cut_depth$depth)

cut_depth<- mutate(cut_depth, prop = n/sum(n) )
view(cut_depth)
