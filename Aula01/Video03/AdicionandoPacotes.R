# Instalando pacotes  

# Primeira forma: usando o menu "Tools" > "Install packages"

# Segunda forma: no console escrever o comando:
#install.packages(nome do pacote)

#Carregar os pacotes se utiliza o comando:

#library(nome do pacote)

# exemplos
install.packages("ggplot2") #para a geração de graficos
install.packages("dplyr") # facilita a manipulação de dados
install.packages("readxl") # para leitura de arquivos em excel
install.packages("corrplot") # para visualiazação da matrix de correlação

library("ggplot2")
library("readxl")
library("corrplot")
library("dplyr")

fortune(7)
library("fortunes")

installed.packages()
update.packages(ask=FALSE)