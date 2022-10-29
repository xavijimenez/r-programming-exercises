#!/usr/bin/env Rscript

# Programa para determinar el máximo común divisor de dos números utilizando el
# algoritmo de Euclides.                                                       

{
  if(interactive()) {
    dividendo <- as.integer(readline(prompt = "Ingrese el dividendo: "))
    divisor <- as.integer(readline(prompt = "Ingrese el divisor: "))
  } else {
    cat("Programa para determinar el máximo común divisor de dos números enteros",
        "utilizando el algoritmo de Euclides\n")
    cat("Ingrese el dividendo: ")
    dividendo <- as.integer(readLines("stdin", n = 1))
    cat("Ingrese el divisor: ")
    divisor <- as.integer(readLines("stdin", n = 1))
  }
  
  while(dividendo %% divisor != 0) {
    resto <- dividendo %% divisor
    dividendo <- divisor
    divisor <- resto
  }
  mcd <- divisor
  cat("El máximo común divisor es:", mcd, "\n")
}
