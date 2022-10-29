#!/usr/bin/env Rscript

# Función para determinar el máximo común divisor de dos números utilizando el
# algoritmo de Euclides.    

{
  if(interactive()) {
    dividendo <- as.integer(readline(prompt = "Ingrese el dividendo: "))
    divisor <- as.integer(readline(prompt = "Ingrese el divisor: "))
  } else {
    cat("Función para determinar el máximo común divisor de dos números enteros",
        "utilizando el algoritmo de Euclides.\n")
    cat("Ingrese el dividendo: ")
    dividendo <- as.integer(readLines("stdin", n = 1))
    cat("Ingrese el divisor: ")
    divisor <- as.integer(readLines("stdin", n = 1))
  }
  
  maxComDiv <- function(dividendo, divisor) {
    while(dividendo %% divisor != 0) {
      resto <- dividendo %% divisor
      dividendo <- divisor
      divisor <- resto
    }
    mcd <<- divisor
  }
  
  maxComDiv(dividendo, divisor)
  cat("El máximo común divisor de", dividendo, "y", divisor, "es", mcd, "\n")
}
