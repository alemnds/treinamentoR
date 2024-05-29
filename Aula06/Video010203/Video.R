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

t.test(notas1,notas2, alternative = "less")

notas.metodo1<- c(8,6,10,7,8,10,4,5,6,10)
notas.metodo2<- c(9,7,10,8,9,10,5,6,7,10)
summary(notas.metodo2)

t.test(notas.metodo1,notas.metodo2,paired = T)

maq.a<- c(145,127,136,142,141,137)
maq.b<- c(143,128,132,138,142,132)
var.test(maq.a,maq.b)

summary(maq.a)
summary(maq.b)

sd(maq.a)
sd(maq.b)

a<- c(25,26,20,23,21)
b<- c(31,25,28,27,24)
c<- c(22,26,28,25,29)
d<- c(33,29,31,34,28)
dados<- c(a,b,c,d)
dados

tratamento<-rep(c("Turma1","Turma2","Turma3","Turma4"),times=c(length(a),length(b),length(c),length(d)))

tratamento

base<-data.frame(dados,tratamento)
View(base)
anova<- aov(dados~tratamento,data = base)
summary(anova)

