
# Simulando estimadores puntuales
# Vamos a realizar procesos de estimación de parametros utilizando datos 
# simulados, esto es bastante importante porque es la unico ocasión de ver 
# como se comporta nuestra estimación con parametros conocidos. Hay que 
# tener en cuenta que en el mundo real nunca vamos a conocer el parametro. 

# Distribución normal

tamano_muestral <- 35
iteraciones <- 100

medias <- vector()
desv_est <- vector()

media_poblacional <- 3 
desv_est_problacional <- 5

for(i in seq_len(iteraciones)){
  muestra <- rnorm(tamano_muestral, media_poblacional, desv_est_problacional)
  medias[i] <- mean(muestra)
  desv_est[i] <- sd(muestra)
}

plot(medias, desv_est)
points(media_poblacional, desv_est_problacional, col = 2, cex = 3, pch = 20)

# Regresión lineal 

tamano_muestral <- 35
iteraciones <- 100

beta_0 <- 1 
beta_1 <- -0.3

beta_0_estimado <- vector()
beta_1_estimado <- vector()

genera_y <- function(x, beta_0, beta_1){
  beta_1*x + beta_0 + rnorm(length(x), 0, 0.5)
}

for (i in seq_len(iteraciones)){
  X <- seq(-3, 3, length.out = tamano_muestral)
  Y <- genera_y(X, beta_0, beta_1)
  betas_estimados <- coef(lm(Y ~ X))
  beta_0_estimado[i] <- betas_estimados[1]
  beta_1_estimado[i] <- betas_estimados[2]
}

plot(beta_0_estimado, beta_1_estimado)
points(beta_0, beta_1, col = 2, cex = 3, pch = 20)


