# Vamos practicar con datos simulados. 

# Distribución normal estándar 

Y <- rnorm(100)

plot(density(Y))

# Distribución normal de media cinco con desviación estandar 3

Y <- rnorm(100, 5, 3)

plot(density(Y))

# Distribución uniforme

Y <- runif(100)

plot(density(Y))

# Distribución uniforme de maximos y minimos de 

Y <- runif(100, 3, 8)

plot(density(Y))

# Ejemplo de la edad y el lugar 

data.frame(
  Edad = rnorm(50, 10, 1.2), 
  Lugar = "Escuela"
) -> escuela

data.frame(
  Edad = rnorm(45, 15, 1.9), 
  Lugar = "Escuela"
) -> prepa

data.frame(
  Edad = rnorm(80, 21, 2.5), 
  Lugar = "Escuela"
) -> universidad

edad_lugar <- rbind(escuela, prepa, universidad)

boxplot(Edad ~ Lugar, data = edad_lugar)

# Modelo lineal

X <- seq(0, 3*pi, length.out = 100)
Y <- -0.3*X + 1 + rnorm(100, 0, 0.5)
Z <- -0.3*X + 1

data.frame(X, Y, Z) -> datos_lineal

plot(Y ~ X, data = datos_lineal)
lines(Z ~ X, data = datos_lineal, col = 2, lwd = 2)

# Modelo no lineal

X <- seq(0, 3*pi, length.out = 100)
Y <- cos(X) + 1 + rnorm(100, 0, 0.5)
Z <- cos(X)

data.frame(X, Y, Z) -> datos_nolineal

plot(Y ~ X, data = datos_nolineal)
lines(Z ~ X, data = datos_nolineal, col = 2, lwd = 2)
