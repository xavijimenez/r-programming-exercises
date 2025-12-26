#!/usr/bin/env Rscript

# Dados tres números, deducir cuál es el central.

{
  if(interactive()) {
    a <- as.numeric(readline(prompt="Número a: "))
    b <- as.numeric(readline(prompt="Número b: "))
    c <- as.numeric(readline(prompt="Número c: "))
  } else {
    cat("Programa que encuentra el central de tres números:\n")
    cat("Número a: ")
    a <- as.numeric(readLines("stdin", n = 1))
    cat("Número b: ")
    b <- as.numeric(readLines("stdin", n = 1))
    cat("Número c: ")
    c <- as.numeric(readLines("stdin", n = 1))
  }
  
  if (a > b) {
    if (b > c) {
      central <- b
    } else {
      if (a > c) {
        central <- c
      } else {
        central <- a
      }
    }
  } else {
    if (a > c) {
      central <- a
    } else {
      if (b > c) {
        central <- c
      } else {
        central <- b
      }
    }
  }
  
  cat("El número central es", central, "\n")
}


