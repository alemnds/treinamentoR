view(diamonds)


filter(diamonds,x==y)

filter(diamonds,depth> 55, depth <70)

dim(diamonds)


filter(diamonds,depth>=70)


summary(diamonds)

median(diamonds$carat)
filter(diamonds,carat<median(diamonds$carat))

filter(diamonds,carat<0.7)

filter(diamonds,cut=="Fair")


ggplot(diamonds,aes(y,z))+geom_bin_2d()

diamonds_q <-filter(diamonds,y>0,y< 20,z>0,z<10)

ggplot(diamonds_q,aes(y,z))+geom_bin_2d()


install.packages("ggplot2movies")
library(ggplot2movies)

view(movies)

 dim(filter(movies, budget == 0 |budget > 0)) / dim (movies)

dim(movies)/

library(magrittr)
library(purrr)
library(tidyr)

x <- runif(100)
x %>% subtract(mean(.)) %>% raise_to_power(2) %>% mean() %>% sqrt()


by_budget <- summarise(group_by(movies,budget),n = n())
view(by_budget)
