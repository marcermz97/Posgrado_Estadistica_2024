# Clase Anova

# Abrir archivo en excel
sitios<- read.csv("claseanova.csv", header = T)
View(sitios)

# Estadistica descriptiva
tapply(sitios$DAP, sitios$Paraje, mean)
tapply(sitios$DAP, sitios$Paraje, var)

# Boxplot de la edad por sitio
boxplot(sitios$DAP ~ sitios$Paraje, xlab = "Sitio", ylab = "Edad", col= "blue"


tapply(sitios$EDAD, sitios$Paraje, mean)
tapply(sitios$EDAD, sitios$Paraje, var)

#Prueba de normalidad de shapiro
shapiro.test(sitios$DAP)

#CLASE
shapiro.test(sitios$dap_t)

# se rechaza porque el valor de P es menor 0.05, no es normal

#Prueba de homogeneidad de varianzas, se acepta por que el valor de P es menor 0.05, las varianzas son semejantes
bartlett.test(madera$Peso_g ~ madera$Especie)

#ejemplo
bartlett.test(sitios$DAP ~ sitios$Especie)
bartlett.test(sitios$DAP ~ sitios$Paraje)

# Transformar Datos
# Los datos de DAP no son normales, aunque sus varianzas si son
# homogeneas

sitios$dap_t <- log(sitios$DAP+1)
Sitios$dap_t <- sqrt(sitios$DAP)

#CLASE
sitios$dap_t <- log(sitios$DAP)
Sitios$dap_t <- sqrt(sitios$DAP)

shapiro.test(sitios$dapt)

# Grafico

boxplot(sitios$dapt ~ sitios$Paraje,
        xlab = "Sitio",
        ylab = "Edad",
        col= "pink")

# Sacar media
mean(sitios$dap_t^2)

#CLASE
mean(sitios$dap_t)
mean(sitios$DAP)

# Realizar analisis de varianzas
sit-aov <- aov(sitios$dap_t ~ sitios$Paraje)
summary(sit.aov)
#28.03

# Prueba de Tuckey
# Se puede analizar que el valor de p si es mayor a 0.05, o si criza y el upr no hay diferencias y viceversa
TukeyHSD(sit.aov)
plot(TukeyHSD(sit.aov))  
# Trinida es qel que tiene los mejores diametros, es el mayor
