# Teste não parametrico - wilcoxon - uma amostra

energia.diaria<- c(5260,5470,5640,6180,6390,6515,6805,7516,7515,8230,8770)
length(energia.diaria)

wilcox.test(energia.diaria,mu=7725)

wilcox.test(energia.diaria,mu=7725,alternative = "greater")


# Teste não parametrico - wilcoxon - duas amostras

gasto<- scan()
perfil<- scan("",what = "character")

gasto
perfil

wilcox.test(gasto~perfil)
length(gasto)
length(perfil)

perfil

pre<- scan()
pos<- scan()

wilcox.test(pre,pos,paired = T)


# identificou que 39 pessoas de uma amostra de 215 tem uma caracteristica. 

prop.test(39,215,.15)

# consumo de cafeina e estado civil 

cafe.estado<- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67),nrow = 3,byrow = T)
rownames(cafe.estado)<- c("casado", "divorciado","solteiro")
colnames(cafe.estado)<- c("0","1-150","151-300",">300")

chisq.test(cafe.estado)
