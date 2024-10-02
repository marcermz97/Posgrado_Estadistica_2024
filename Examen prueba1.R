
datos <- data.frame(diam_arboles, altura_arboles)

#Código pregunta 15 y 16
set.seed(42)
n <-30
altura <- rnorm(n, mean = 170, sd = 10) 
peso <- 0.05 *altura + rnorm(n, mean = 0, sd = 5)
View(altura)

#17 18
set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10)
peso <-0.05 *altura + rnorm(n, mean = 0, sd = 5)

#19 20
set.seed(25)
n <- 40
diam_arboles <-1.5 * diam_arboles + rnorm(n, mean = 0, sd = 3)




