# Estrutura de condição

a<- 3
b<- 3

if (b>a){
  cat("b é maior que a")
} else {
  cat("a é maior que b")
}

ifelse(b==a,"b é igual a a","b é diferente de a")

# estrutura de repetição

a<-15

while (a<30) {
  print(a)
  a<-a+1
}

v<-c(1,2,5,4,12,36)

for(i in 1: length(v)){
  print(v[i])
}

#Exemplo
Base$Classe_valor<- NA

for (i in 1: nrow(Base)){
  if (Base$Valor_pedido[i]>=500){
    Base$Classe_valor[i]<- "Alto"
  } else{
    Base$Classe_valor[i]<-"Baixo"
  }
}

#Funções

soma<-function(a,b){
  s<-(a+b)
  return(s)
}

soma(3,4)

#Sintentizar dados

#variaveis quantitativas

hist(Base$Valor_pedido)

#variaveis categóricas

table(Base$Cidade)/200*100

table(Base$cliente,Base$Cidade)

table(Base$cliente,Base$Avaliação)

#variaveis categóricas e quantitativas

tapply(Base$Valor_pedido, Base$cliente, mean)
