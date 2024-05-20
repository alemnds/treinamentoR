data("mtcars")
View(mtcars)

library(ggplot2)

#Verificando os dados:
head(mtcars)

#estatistica descritiva
summary(mtcars)

#transformando o tipo de variavel
mtcars<-transform(mtcars, mpg=as.numeric(mpg),cyl=as.numeric(cyl),disp=as.numeric(disp),hp=as.numeric(hp),
                  drat=as.numeric(drat),qsec=as.numeric(qsec),vs=as.numeric(vs),am=as.numeric(am),gear=as.numeric(gear),
                  carb=as.numeric(carb))


#Criando histograma
ggplot(data = mtcars) + geom_histogram(aes(x = hp))

qplot(mpg,wt,data=mtcars)

mtcars$cyl_factor <- factor(mtcars$cyl)

ggplot(mtcars,aes(x=mpg,y=wt,shape = cyl_factor))+ geom_point()

ggplot(mtcars,aes(x = mpg, y = wt,color = cyl))+ geom_point()
