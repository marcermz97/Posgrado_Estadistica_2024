prod <- read.csv("tarea1.csv" , header = T)
head(prod)

# Datos iguales o menores a la media y datos menores a 16.5m--------------------------

H.media <- subset(prod, prod$Altura >=  mean(prod$Altura))
mean(prod$Altura)
View(H.media)
#26 obs
#Subset:  subconjunto, conjunto de un conjunto más grande.Restringuir sola una parte.

H.16 <- subset(prod, prod$Altura <= 16.5)
View(H.16)
#36 obs

# Variable vecinos---------------------------------------------

vecinos3 <- subset(prod, prod$Vecinos <= 3)
View(vecinos3)
#26 obs

vecinos4 <- subset(prod, prod$Vecinos <= 4)
View(vecinos4)
#39 obs

# Variable diametro--------------------------------------------

DBH.mean <- subset(prod, prod$Diametro < mean(prod$Diametro))
mean(prod$Diametro)
View(DBH.mean)
#25 obs

DBH.16 <- subset(prod, prod$Diametro > 16)
mean(prod$Diametro)
View(DBH.16)
#24 obs

#Variable especie----------------------------------------------

cedrorojo <- subset(prod, prod$Especie == "C")
View(cedrorojo)
#22 obs

tsugaydouglasia <- subset(prod, prod$Especie != "C" )
View(tsugaydouglasia)
#28 obs

spp1.1 <- subset(prod, prod$Diametro <= 16.9)
View(spp1)
#2 obs
spp2 <- subset(prod, prod$Altura > 18.5)
View(spp2)
#2 obs

#Visualización de datos---------------------------------------
hist(prod$Altura, xlab = "altura", ylab = "frecuencia", main = "Histograma de Altura", xlim = c(4, 25), ylim = c (0,13), col = ("pink"))

hist(H.media$Altura, xlab = "altura", ylab = "frecuencia", main = "Histograma de Altura - H.media", xlim = c(13,25), ylim = c(0,13), col = ("blue"))

hist(H.16$Altura, xlab = "altura", ylab = "frecuencia", main = "Histograma de Altura - H.16", xlim = c(5,24), m = c (0,14), col = ("yellow"))

hist(prod$Vecinos, xlab = "Vecinos", ylab = "frecuencia", main = "Histograma de Vecinos", xlim = c(7,32), ylim = c (0,14), col = ("green"))

hist(vecinos3$Vecinos, xlab = "Vecinos", ylab = "frecuencia", main = "Histograma de vecinos3", xlim = c(9,24), ylim = c (0,14), col = ("red"))

hist(vecinos4$Vecinos, xlab = "Vecinos", ylab = "frecuencia", main = "Histograma de vecinos4", xlim = c(8,20), ylim = c (0,20), col = ("violet"))

hist(prod$Diametro, xlab = "Diametro", ylab = "frecuencia", main = "Histograma de Diametro", xlim = c(12,24), ylim = c (0,25), col = ("orange"))

hist(DBH.media$Diametro, xlab = "Diametro", ylab = "frecuencia", main = "Histograma de Diametro DBH.media", xlim = c(8,23), ylim = c (0,30), col = ("green"))

hist(DBH.16$Diametro, xlab = "Diametro", ylab = "frecuencia", main = "Histograma de Diametro DBH.16", xlim = c(16,22), ylim = c (0,15), col = ("blue"))

# Estadisticas basicas-------------------------------------------------------------------------------------------------------------
# Determinar la media (mean) de los objetos (variables y respectivos subsets), así como su desviación estándar (sd)

# Altura
mean(prod$Altura)
sd(prod$Altura)

# H.media
mean(H.media$Altura)
sd(H.media$Altura)

# H.16
mean(H.16$Altura)
sd(H.16$Altura)

# Vecinos
mean(prod$Altura)
sd(prod$Altura)

# Vecinos 3
mean(vecinos3$Altura)
sd(vecinos3$Altura)

# Vecinos 4
mean(vecinos4$Altura)
sd(vecinos4$Altura)

# Diametro
mean(prod$Diametro)
mean(prod$Diametro)

# DBH-media
mean(DBH.mean$Diametro)
sd(DBH.mean$Diametro)

# DBH-16
mean(DBH.16$Diametro)
sd(DBH.16$Diametro)
