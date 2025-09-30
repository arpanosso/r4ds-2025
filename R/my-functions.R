#' Função utilizada para operações de soma ou subtração do elemento atual 'i' com
#' o anterior 'i-1'. Sendo que o primeiro elemento sempre recebe zero.
with_previus <- function(vector, vector_classe, oper = c("dif", "soma")) {
  oper <- match.arg(oper)  # garante que seja "dif" ou "soma"
  vector_out <- vector
  for (i in seq_along(vector)) {
    if (i == 1) {
      vector_out[i] <- 0
    } else if (vector_classe[i] != vector_classe[i - 1]) {
      vector_out[i] <- 0
    } else {
      if (oper == "dif") {
        vector_out[i] <- vector[i] - vector[i - 1]
      } else if (oper == "soma") {
        vector_out[i] <- vector[i] + vector[i - 1]
      }
    }
  }
  return(vector_out)
}

#' Exemplo
x <- c(1,10,100,1000)
class1 <- rep("T1",4)
with_previus(x, class1, "dif") # subtraindo os valores de x,
with_previus(x, class1, "soma") # somando os valores de x,

#' Exemplo com classes diferentes
y <- c(1,10,100,1000, 2, 11, 101, 1001)
class2 <- rep(c("T1","T2"),c(4,4))
with_previus(y, class2, "dif") # subtraindo os valores de x,
with_previus(y, class2, "soma") # somando os valores de x,
