# Ejercicio correlación

library(repmis)
eruptions <- source_data("https://dl.dropboxusercontent.com/s/liir6sil7hkqlxs/erupciones.csv" )
summary(eruptions)  

plot(eruptions$waiting, eruptions$eruptions)
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

