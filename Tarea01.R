library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

mean(conjunto$Altura)
h.media <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))
h.16 <- subset(conjunto, conjunto$Altura <16.5)

vecinos.3 <- subset(conjunto,conjunto$Vecinos <= 3)
vecinos.4 <- subset(conjunto,conjunto$Vecinos > 4)

DBH.media <- subset(conjunto,conjunto$Diametro < mean(conjunto$Diametro))
DBH.16 <-subset(conjunto,conjunto$Diametro >16)


# especie -----------------------------------------------------------------

cedro_rojo <- subset(conjunto, conjunto$Especie == "c")
Tsuga_heterofila <- subset(conjunto, conjunto$Especie == "h")
Douglasia_verde <- subset(conjunto, conjunto$Especie == "f")


# cuantas observaciones son menor o igual a 16.9 cm dimaetro --------------

sum(conjunto$Diametro <= 16.9)

# cuantas observaciones son mayores a 18.5 m de altura --------------------

sum(conjunto$Altura > 18.5)

# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, col="blue", xlab= "H.media", ylab = "H.16", main = "altura")
hist(conjunto$Vecinos, col="yellow", xlab = "vecino.3", ylab = "vecino.4", main = "vecinos")
hist(conjunto$Diametro, col = "red", xlab = "DBH.media", ylab = "DBH.16", main = "diametro")

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Diametro)

