# Questão 1
a<-3
b<-2

funcao<-function(a,b){
  result<-a-b
  return(result)
}
funcao(a,b)

# Questão 2
a<-3
b<-2
funcao<-function(a,b){
  result<-a-b
  return(result)
}
funcao(b,a)

# Questão 3
loop1<-function(objeto){
  for (i in 1:3) print (objeto)
}
loop1("teste")

# Questão 4

loop2<-function(objeto){
  i<-1
  while (i<6)
  {
    print (objeto)
    i<- i+1
  }
}
loop2("teste")

# Questão 5

a<-2

if (a==2){
  b<-2
}else{
  b<-1
}
b

# Questão 6

a<-2
b<-1

if (a==b){
  c<-1
}else if (b>a){
  c<-2
}else{
  c<-3
}

c

# Questão 7

a<- 31
b<- 30


ifelse(a<b, "a é maior", "b é maior")


ifelse(a!=b, "a é maior", "b é maior")


ifelse(a==b, "a é maior", "b é maior")

# Mostra o Maior deles
ifelse(a>b, "a é maior", "b é maior")