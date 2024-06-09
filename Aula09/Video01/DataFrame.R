# Manipulação de data frame

install.packages("devtools")
devtools::install_github("rstudio/EDAWR")
library(devtools)
library(usethis)
library(tidyr)
library(ggplot2)
library(EDAWR)
library(dplyr)

view(storms)
view(cases)
view(pollution)

#Organizando por ano de acordo com o pais
cases2<- gather(cases,"year", "n",2:4)
view(cases2)

#Reorganiza os dados de acordo com o tamanho
pollution2<- spread(pollution,size,amount)
view(pollution2)

storms2<- separate(storms,date,c("year","month","day"),sep = "-")
view(storms2)

storms3<- unite(storms2,"date",year,month,day,sep = "-")
view(storms3)
