#!/usr/bin/env RScript

{
  cat("Programa que imprime y suma la serie de números 3, 6, 9, 12,..., 99 \n")
  suma <- 0
  num <- 3
  repeat {
    print(num)
    suma <-  suma + num
    num <- num + 3
    if (num == 102) {
      break
    }
  }
  cat("La suma es:", suma, "\n")
}
