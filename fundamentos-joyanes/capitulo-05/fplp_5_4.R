#!/usr/bin/env Rscript

# Función que obtiene el valor absoluto de un número entero.

Abs <- function(n) {
  if (n < 0)
    return(n * -1)
  else {
    return(n)
  }
}
