#Aula 6 - Inferencia a estatistica

# Teste t (de Student) uma amostra e variância desconhecida

notas <- c(8,6,10,7,8,10,4,5,6,10)
length(notas)

summary(notas)

t.test(notas,mu=6,alternative = "greater")

t.test(notas, mu=6, alternative = "less")

t.test(notas, mu = 6, alternative = "two.sided")


#Teste t para duas amostras

notas1<- c(8,6,10,7,8,10,4,5,6,10)

notas2<- c(2,4,0,3,2,0,6,5,4,0)

length(notas2)

summary(notas2)

t.test(notas1,notas2)

t.test(notas1,notas2, alternative = "greater")
