# Veamos el funcionamiento del sesgo y la varianza a nivel funcion --------


# Kernel ------------------------------------------------------------------


# Distribución normal -----------------------------------------------------

tamano_muestral <- 100
media <- 5
desv <- 3
iteraciones <- 75

x <- seq(-5, 15, length.out = 100)

Y <- rnorm(tamano_muestral, media, desv)

estimador_kernel <- density(Y)

plot(estimador_kernel)
lines(x = x, y = dnorm(x, media, desv), col = 2, lwd = 2)



plot(estimador_kernel)
for(i in seq_len(iteraciones)){
  Y <- rnorm(tamano_muestral, media, desv)
  
  estimador_kernel <- density(Y)
  
  lines(estimador_kernel)
  
}
lines(x = x, y = dnorm(x, media, desv), col = 2, lwd = 2)
