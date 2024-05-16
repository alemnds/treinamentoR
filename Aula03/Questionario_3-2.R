
table(Base$Avaliação)
table(Base$Avaliação)/nrow(Base)*100

table(Base$Avaliação)/nrow(Base)*100


table(Avaliação)
table(Avaliação)/nrow(Base)*100


table(BaseAvaliação)
table(BaseAvaliação)/nrow(Base)*100


table(Base$Cidade,Base$Avaliação)

table(Base$Avaliação)

table(Base$Cidade)


tapply(Base$Valor_pedido,Base$Cidade,mean)
tapply(Base$Valor_pedido,Base$cliente,mean)


tapply(Base$Valor_pedido,Base$Cidade,sum)
tapply(Base$Valor_pedido,Base$cliente,sum)


tapply(Base$Valor_pedido,Base$Cidade,total)
tapply(Base$Valor_pedido,Base$cliente,total)



tapply(Base$Km_percorrida,Base$Cidade,mean)
tapply(Base$Km_percorrida,Base$cliente,mean)


tapply(Base$Cidade,mean)
tapply(Base$cliente,mean)



Base$Cod_aval<-NA
for (i in 1:nrow(Base)){
  if(Base$Avaliação[i]=="ruim"){
    Base$Cod_aval[i]<-1
  } else {
    if(Base$Avaliação[i]=="regular"){
      Base$Cod_aval[i]<-2
    } else {
      if(Base$Avaliação[i]=="bom"){
        Base$Cod_aval[i]<-3
      } else {
        if(Base$Avaliação[i]=="excelente"){
          Base$Cod_aval[i]<-4
        }
      }
    }
  }
}

LEC(20000,500,1,9)

D<- 2000
 f<- 500
 h<-1
 c<- 9
 
LEC<-function(D,f,h,c){
  lec<-(sqrt((2*D*f)/(h*c)))
  as.integer(lec)
  return(ceiling(lec))
}

LEC(D,f,h,c)

LEC<-function(D,f,h,c){
  lec<-(sqrt((2*D*f)/(h*c)))
  as.integer(lec)
  return(ceiling(lec))
}