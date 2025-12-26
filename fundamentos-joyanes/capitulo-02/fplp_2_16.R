#!/usr/bin/env Rscript

{
  cat("Programa que calcula la suma de los enteros entre 1 y 10\n")
  suma <- 0
  num <- 0
  
  repeat {
    num <- num + 1
    suma <- suma + num
    if (num == 10) {
      break
    }
  }
  cat("La suma de los números entre 1 y 10 es", suma, "\n")
}
