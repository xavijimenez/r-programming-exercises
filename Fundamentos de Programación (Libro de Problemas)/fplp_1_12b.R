#!/usr/bin/env Rscript

# Programa para determinar el máximo común divisor de dos números utilizando el
# Algoritmo de Euclides.                                                       

{
  if(interactive()) {
    dividendo <- as.integer(readline(prompt = "Ingrese el dividendo: "))
    divisor <- as.integer(readline(prompt = "Ingrese el divisor: "))
  } else {
    cat("Programa para determinar el máximo común divisor de dos números enteros",
        "utilizando el algoritmo de Euclides mediante una función.\n")
    cat("Ingrese el dividendo: ")
    dividendo <- as.integer(readLines("stdin", n = 1))
    cat("Ingrese el divisor: ")
    divisor <- as.integer(readLines("stdin", n = 1))
  }
  
  repeat {
    resto <-  dividendo %% divisor
    dividendo <- divisor
    divisor <- resto
    
    if (dividendo %% divisor == 0) {
      break
    }
  }
  mcd <- divisor
  cat("El máximo común divisor es:", mcd, "\n")
}
