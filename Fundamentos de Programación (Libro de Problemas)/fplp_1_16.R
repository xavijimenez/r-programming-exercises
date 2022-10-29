#!/usr/bin/env Rscript

# Programa que calcula la velocidad en m/s de los corredores de una carrera de 1500 m

{
  distancia <- 1500
  
  if(interactive()) {
    mm <- as.numeric(readline(prompt="Minutos: "))
    ss <- as.numeric(readline(prompt="Segundos: "))
  } else {
    cat("Programa que calcula la velocidad en m/s de los corredores de una carrera de 1500 m\n")
    cat("Minutos: ")
    mm <- as.numeric(readLines("stdin", n = 1))
    cat("Segundos: ")
    ss <- as.numeric(readLines("stdin", n = 1))
  }
  
  while(mm != 0 & ss !=0) {
    tiempo <- ss + mm * 60
    v <- distancia / tiempo
    
    print(c(mm, ss, tiempo, v))
    
    if(interactive()) {
      mm <- as.numeric(readline(prompt="Minutos: "))
      ss <- as.numeric(readline(prompt="Segundos: "))
    } else {
      cat("Minutos: ")
      mm <- as.numeric(readLines("stdin", n = 1))
      cat("Segundos: ")
      ss <- as.numeric(readLines("stdin", n = 1))
    }
  }
}
