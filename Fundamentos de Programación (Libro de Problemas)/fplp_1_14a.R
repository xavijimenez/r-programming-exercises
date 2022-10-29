#!/usr/bin/env Rscript

{
  cat("Programa que imprime y suma la serie de números 3, 6, 9, 12,..., 99 \n")
  suma <- 0
  num <- 3
  while(num <= 99) {
    print (num)
    suma <- suma + num
    num <- num + 3
  }
  cat("La suma es:", suma, "\n")
}
