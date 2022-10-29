#!/usr/bin/env Rscript

# Programa para verificar si un número es primo o no

{
  if(interactive()) {
    num <- as.integer(readline(prompt = "Ingrese un entero: "))
  } else {
    cat("Programa para verificar si un número es primo o no\n")
    cat("Ingrese un entero: ")
    num <- as.integer(readLines("stdin", n = 1))
  }
  
  if (num == 2) {
    cat(num, "es primo\n")
  } else if (any(num %% (2 : (num - 1)) == 0)) {
    cat(num, "no es primo\n")
  } else { 
    cat(num, "es primo\n")
  }
}

