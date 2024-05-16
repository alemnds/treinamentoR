# MANIPULAÇÃO DE DATA FRAME
attributes(HBAT)
a<- c(1,2,3,4,5)
b<- c("João","Luiz","Carla","Alberto","Maria")
c<- c("M","M","F","M","F")
data<-cbind(a,b,c)
is.data.frame(data)
data2<-as.data.frame(data)
is.data.frame(data2)
colnames(data2)<-c("ID","Nome","Sexo")
data2
data2[1,]
data2[,1]
data2[,2]
data2 [2,2]
data2$Nome
data2$Sexo[2]
which(data2$Sexo=="F")
# MANIPULANDO UM DATA FRAME

data2
data2$Idade<-c(45,23,43,32,33)

data2[data2$Sexo=="M",]
data2[data2$Sexo=="M"&data2$Idade>40,]

data2[which(data2$Sexo=="F"&data2$Idade>30),]

data2[rev(data2$ID),]

data2[order(data2$Idade,data2$Nome),]

data2[order(data2$Sexo,data2$Nome),]

a<-split(data2,data2$Sexo)

a
a$F
a$M

data_div<-split(data2,data2$Sexo)
data_div

data_div$M


ad