# Gráfico de Barras

install.packages("ggrepel")
install.packages("tidyverse")

library(tidyverse)
library(plotly)
library(ggplot2)
library(ggrepel)


#Analisando a estrutura do banco de dados
str(graf)

#Acessando as variáveis
attach(graf)

#Observando os dados
head(graf)

#Criando gráfico de barras
ggplot(data = graf) + geom_bar(aes(x = Atendimento))

#Organizando o gráfico de barras
graf$Atendimento <- factor(graf$Atendimento,levels = c("Insatisfeito",
                                                       "Satisfeito",
                                                       "Muito satisfeito"))

#Inserir labor no gráfico:
ggplot(data = graf) + geom_bar(aes(x = Atendimento)) +
    labs(title = "Loja Beta Maria",
         x = "Nível de Satisfação",
         y = "Quantidade", caption = "Filial: Rua São João")

#Paleta de Cores
ggplot(data = graf) + geom_bar(aes(x = Atendimento), color = "blue", fill = "pink")+
  labs(title = "Loja Beta Maria",
       x = "Nível de Satisfação",
       y = "Quantidade", caption = "Filial: Rua São João") + theme_classic()

#Inversão do grafico
ggplot(data = graf) + geom_bar(aes(x = Atendimento), color = "blue", fill = "pink")+
  labs(title = "Loja Beta Maria",
       x = "Nível de Satisfação",
       y = "Quantidade", caption = "Filial: Rua São João") + theme_classic() + coord_flip()
