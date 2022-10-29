#!/usr/bin/env Rscript

# Programa para verificar si un número es primo o no

{
  if(interactive()) {
    n <- as.integer(readline(prompt = "Ingrese un entero: "))
  } else {
    cat("Programa para verificar si un número es primo o no\n")
    cat("Ingrese un entero: ")
    n <- as.integer(readLines("stdin", n = 1))
  }
  
  divisor <- 2
  
  for (i in 1:n-1) {
    if(n %% divisor == 0) {
      if(divisor == n) {
        resultado <- "Es primo"
      } else {
        resultado <- "No es primo"
      }
    } else {
      divisor <- divisor + 1
    }
  }
  print(resultado)
}
