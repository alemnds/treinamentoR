View(react)

wilcox.test(react)

reacao<- scan()
reacao

wilcox.test(reacao,mu=0)

mean(reacao)

grupo1<- scan()
grupo2<- scan()

wilcox.test(grupo1,grupo2,paired = T)
mean(grupo1)
mean(grupo2)

droga.cura<- matrix(c(23,7,18,13),nrow = 2,byrow = T)

rownames(droga.cura)<- c("Droga1","Droga2")
colnames(droga.cura)<- c("Curado","Não Curado")

chisq.test(droga.cura)
