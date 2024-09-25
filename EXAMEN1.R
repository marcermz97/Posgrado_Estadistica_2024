prod <- read.csv("tarea1.csv", header = T)
View(prod)
summary(prod)





datos <- data.frame(diam_arboles, altura_arboles)


sitios<- read.csv("claseanova.csv", header = T)
View(sitios)

set.seed(42)
n <-30
altura <- rnorm(n, mean = 170, sd = 10) 
peso <- 0.05 *altura + rnorm(n, mean = 0, sd = 5)
View(altura)