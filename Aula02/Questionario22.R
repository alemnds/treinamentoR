a<-c(1,3,24,5,6)
b<-c("a","b","c","d","e")
data<-cbind(a,b)
data<-as.data.frame(data)

which(data$a==24)
length(data)
mode(data)

x<-0:10

sum(x*(x<5))

sum(x*5)

sum(x)

floor(pi)
ceiling(pi)
sqrt(100)

Nome<-c("José Santos","Angela Dias","Aline Souza","Mayara Costa","Lara Lins","Nícolas Barros")
Idade<-c(17,17,16,15,15,13)
Sexo<-c("M","F","F","F","F","M")
NF<-c(92,75,81,87,90,88)
data<-cbind(Nome,Idade,Sexo,NF)
data<-as.data.frame(data)

View(data)
head(data)
attributes(data)
tail(data)

data[2,1]
data[2,]
data$Nome[2]

data$Conceito<-c("A","C","B","B","A","B")

data[data$Sexo=="M",]
data[order(data$Conceito),]
data[order(data$Sexo,data$Nome),]
