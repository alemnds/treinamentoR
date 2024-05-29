# Teste não parametrico - wilcoxon - uma amostra

energia.diaria<- c(5260,5470,5640,6180,6390,6515,6805,7516,7515,8230,8770)
length(energia.diaria)

wilcox.test(energia.diaria,mu=7725,alternative = "greater")


# Teste não parametrico - wilcoxon - duas amostras

gasto<- scan()
perfil<- scan("",what = "character")

gasto
perfil

wilcox.test(gasto~perfil)
length(gasto)
length(perfil)
