# Correlación de datos

library(repmis)
edad <- source_data("https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1" )

summary(edad)

plot(edad$DAP, edad$EDAD)
View(edad)

plot(edad$EDAD, edad$DAP)
View(edad)

plot(edad$DAP, edad$EDAD, pch = 19, col = "indianred", 
     xlab = "Diametro (c,m)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))


#=0.05
#Ho= si hay correlacion
#H1= no hay correlacion

cor.test(edad$DAP, edad$EDAD)
# 0.79 Prueba parametrica

#regresión lineal
ed.lm <- lm(edad$EDAD ~ edad$DAP)
View(ed.lm)
#solo obtener el intercepto (alfa) y beta
ed.lm

# Para obtener la significancia aplico summary
summary(ed.lm)

plot(edad$DAP, edad$EDAD)
View(edad)

plot(edad$DAP, edad$EDAD, pch = 19, col = "pink", 
     xlab = "Diametro (c,m)",
     ylab = "Edad",
     ylim = c(20,140),
     xlim = c(10,50))
abline(ed.lm)
text( 20, 120, "y = -8.4 * 2.4(x)")

ed.lm$coefficients
ed.lm$residuals
edad$res <- ed.lm$residuals
edad$edprim <- ed.lm$fitted.values
edad$com.res <-edad$EDAD - edad$edprim

#suma de residuales
sum(edad$res)
sum(edad$res^2)/58

# Estimar la edad (prima) para los valores de DAP: 15, 30, 45, 47
valores <- c(15, 30, 45, 47)
prima <- -8.4 + 2.4*(valores)
prima
# valores a favor del Diametro

# EJERCICIO--------------------------------------------------------------------------------------

# Ejercicio correlación

library(repmis)
eruptions <- source_data("https://dl.dropboxusercontent.com/s/liir6sil7hkqlxs/erupciones.csv" )
summary(eruptions)  

plot(eruptions$waiting, eruptions$erupcion)
View(eruptions)

plot(eruptions$eruptions, eruptions$waiting)
View(eruptions)

plot(eruptions$waiting, eruptions$eruptions, pch = 19, col = "orange", 
     xlab = "Waiting",
     ylab = "Eruptions",
     ylim = c(1,6),
     xlim = c(40,100))

#=0.05
#Ho= si hay correlacion
#H1= no hay correlacion

cor.test(eruptions$waiting, eruptions$eruptions)
# Prueba parametrica

#regresión lineal
ed.lm <- lm(eruptions$eruptions ~ eruptions$waiting)
View(ed.lm)
#solo obtener el intercepto (alfa) y beta
ed.lm

# Para obtener la significancia aplico summary
summary(ed.lm)


plot(eruptions$waiting, eruptions$eruptions)
View(eruptions)

plot(edad$DAP, edad$EDAD, pch = 19, col = "pink", 
     xlab = "Waiting",
     ylab = "Eruptions",
     ylim = c(1,6),
     xlim = c(40,100))
abline(ed.lm)
text( 20, 120, "y = -8.4 * 2.4(x)")

#Ajustar tabla    #QUEEEEEEEEEEEEEEEEEEEEEEEEE
eruptions$res <-eruptions.lm$residuals
View(eruptions$res)
eruptions$edprim <-eruptions.lm$fitted.values
eruptions$com.res <-eruptions$erupcion - eruptions$edprim

#suma de residuales     #QUEEEEEEE
sum(eruptions$res)

# Varianza 5270 df- "gl"      #QUEEEEEEE
sum(erupciones$res^2)
sum(eruptions$res^2)/270

#Estimar la edad (prima) para los valores de DAP:15, 30, 45, 47
valores <- c(15,30,45,47)
prima <- -1.87 + 0.75* (valores)
prima







