#Gráfico de Pareto
install.packages("qcc")

library(qcc)

#Criando Banco de dados: Defeitos por lote e custo por lote
defs<- c(1,3,1,4,2,3,1,0,2,4,3,5,2,1,3,10,3,1,5,2)
names(defs)<- c("l1","l2","l3","l4","l5","l6","l7","l8","l9","l10","l11","l12","l13","l14","l15","l16","l17","l18","l19","l20")

cust<-c(10.3,30.9,10.3,50.2,20.6,30.9,10.3,0,20.6,50.2,30.9,60.5,20.6,10.3,30.9,130,30.9,10.3,60.5,20.6)
names(cust)<- c("l1","l2","l3","l4","l5","l6","l7","l8","l9","l10","l11","l12","l13","l14","l15","l16","l17","l18","l19","l20")

# gráfico de pareto
pareto.chart(defs)
pareto.chart(cust)

#inserindo dos dados
pareto.chart(defs, main= "Quantidade de defeitos por lote",xlab="Lotes",ylab="valores")
pareto.chart(cust)