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

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(color = factor(cyl))) +
  geom_text(aes(label = rownames(mtcars)),
            check_overlap = TRUE, hjust = "inward")

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(bins = 10) +
  labs(x = "Miles/(US) gallon",
       y = "Count",
       title = "Distribution of Miles/Gallon") +
  geom_vline(aes(xintercept = 19.2),
             color = "red") +
  annotate(geom = "text",
           label = "Median = 19.2",
           x = 21,
           y = 7,
           hjust = 0,
           color = "red")


ggplot(mtcars, aes(x = mpg)) +
  geom_histogram() +
  facet_wrap(.~wg)

ggplot(mtcars, aes(y = mpg)) +
  geom_histogram() +
  facet_wrap(.~cyl)


ggplot(mtcars, aes(x = mpg)) +
  geom_histogram() +
  facet_wrap(.cyl)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram() +
  facet_wrap(.~cyl)


ggplot(mtcars, aes(x = mpg)) +
  geom_histogram() +
  facet_wrap(.~cylindro)

#Utilize o comando abaixo para transformar a base em data frame:
EuStockDF <- as.data.frame(EuStockMarkets)

#Utilize o comando abaixo para tranformar o tempo em variável numérica:
EuStockDF$Date <- as.numeric(time(EuStockMarkets))

ggplot(EuStockDF, aes(x = Date, y = DAX)) + geom_line()

ggplot(EuStockDF, aes(x = Date)) +
  geom_line(aes(y = DAX), color = "light blue") +
  geom_line(aes(y = SMI), color = "red") +
  geom_line(aes(y = CAC), color = "purple") +
  geom_line(aes(y = FTSE), color = "green")
