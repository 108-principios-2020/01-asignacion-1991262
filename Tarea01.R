library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

mean(conjunto$Altura)

h.media <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))
h.16 <- subset(conjunto, conjunto$Altura <16.5)

vecinos.3 <- subset(conjunto,conjunto$Vecinos <= 3)
vecinos.4 <- subset(conjunto,conjunto$Vecinos > 4)

DBH.media <- subset(conjunto,conjunto$Diametro < mean(conjunto$Diametro))
DBH.16 <- subset(conjunto,conjunto$Diametro >16)


# especie -----------------------------------------------------------------

cedro_rojo <- subset(conjunto, conjunto$Especie == "c")
Tsuga_heterofila <- subset(conjunto, conjunto$Especie == "H")
Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")

HYF <- rbind(Tsuga_heterofila, Douglasia_verde)


# cuantas observaciones son menor o iguales a 16.9 cm de diametro ---------

sum(conjunto$Diametro <= 16.9)

# cuantas observaciones son mayores a 18.5 m de altura --------------------

sum(conjunto$Altura > 18.5)


# histograma --------------------------------------------------------------

hist(conjunto$Altura, col = "blue", xlab = "h.media", ylab = "h.16", main = "altura")
hist(conjunto$Vecinos, col = "red", xlab = "vecinos.3", ylab = "vecinos.4", main = "vecinos")
hist(conjunto$Diametro, col = "yellow", xlab = "DBH.media", ylab = "DBH.16", main= "diametro")

# 3 graficas ----------------------------------------------------------------

par(mfrow=c(2,2))
hist(Tsuga_heterofila$Altura, main = "altura especies H", col = "red", xlab = "altura", ylab = "frecuencia")
hist(Tsuga_heterofila$Diametro, main = "diametro especie H", col = "blue", xlab = "diametro", ylab = "frecuencia")
hist(Douglasia_verde$Altura, main = "altura especie F", col = "green", xlab = "altura", ylab = "frecuencia")
hist(Douglasia_verde$Diametro, main = "diametro especie F", col = "orange", xlab = "diametro", ylab = "frecuencia")
par(mfrow=c(1,1))

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Diametro)

