#Questionario
#Teste t para duas amostras

x<- c(30.5,35.3,33.2,40.8,42.3,41.5,36.3,43.2,34.6,38.5)

y<- c(28.2,35.1,33.2,35.6,40.2,37.4,34.2,42.1,30.5,38.4)


t.test(x,mu=35,alternative = "greater") 

summary(x)
summary(y)

t.test(x,y)

t.test(x,y,paired = T)

maquina1<- c(24.58,22.09,23.7,18.89,22.02,28.71,24.44,20.91,23.83,20.83)
maquina2<- c(21.61,19.06,20.72,15.77,19,25.88,21.48,17.85,20.86,17.77)

summary(maquina1)
summary(maquina2)

sd(maquina1)
sd(maquina2)

var.test(maquina1,maquina2)


a<- c(95,91,89,90,99,88,96,98,95)
b<- c(83,89,85,89,81,89,90,82,84,80)
c<- c(68,75,79,74,75,81,73,77)

dados <- c(a,b,c)

tratamento<- rep(c("metodo1", "metodo2", "metodo3"),times=c(length(a),length(b),length(c)))

base<- data.frame(dados,tratamento)
View(base)

anova<- aov(dados~tratamento,data = base)
summary(anova)


x<- c(70, 82, 78, 74, 94, 82)
y<- c(64, 72, 60, 76, 72, 80, 84, 68)

t.test(x, y, alternative = c("less"))
t.test(x, y, alternative = c("greater"))
t.test(x, y, alternative = c("two.sided"))


t_test_data<- data.frame(values<-c(x,y), group<- c(rep("A",length(x)),rep("B",length(y))))

t.test(values~group,data = t_test_data, alternative =c("greater"))

