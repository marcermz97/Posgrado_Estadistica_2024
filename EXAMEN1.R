prod <- read.csv("datosexamen", header = T)
View(prod)

datos <- data.frame(diam_arboles, altura_arboles)

library(readxl)
examen <- read.csv("examen.csv")
View(examen)


"https://github.com/mgtagle/Test-202/blob/master/Scripts/PrincipiosEstadistica.md"



#Para reproductibilidad
set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10)
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5)



#Para reproductibilidad
set.seed(42) 
n <- 30
altura <- rnorm(n, mean = 170, sd = 10) #Altura en cm
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5)  #Peso en kg, con algo de ruido


sitios<- read.csv("claseanova.csv", header = T)
View(sitios)

set.seed(42)
n <-30
altura <- rnorm(n, mean = 170, sd = 10) 
peso <- 0.05 *altura + rnorm(n, mean = 0, sd = 5)
View(altura)

#Importar datos de archivo excel a la consola de R
#Funcion "read.csv"
setwd("C:/examen")

clima <- read.csv("examen")
head(clima)
tail(e)




