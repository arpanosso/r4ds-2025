# Aula 04 de R4DS - 26/08/2025
# Vetores -----------------------------------------------------------------
# definição do vetor com a função concatenate
idade<- c(44, 21, 33, 52)
idade # vetor numérico

nome <- c("Alan", "Paulo", "Maria", "Jaqueline")
nome # vetor de caracteres

# pegando informações do vetor
length (idade)
typeof (idade)
typeof (nome)

mistura <- c(1,2,"3")
mistura

# mostrar o 3 elemento do vetor idade
idade [3]

# mostrar o primeiro e o último elemento
# nome
nome[c(1,4)]

# ordenar idade
order(idade)
idade [order(idade)]
sort (idade)

# mudando o valor de uma idade
idade[4]<- 22
idade
sum(idade)
mean(idade)
median(idade)

x3 <- c(0.6, 3.4, 9.8, 13.8, 17.4)
sum(x3)
mean (x3)
desvios <- x3 - mean(x3)
sum(desvios)
desvios^2
sum(desvios^2)
sum(desvios^2)/4 # variancia amostral
var(x3)

# Propagação de erro com NA -----------------------------------------------
peso <- c(85, 60, 48, NA)
sum(peso) #exemplo, sempre vai dar NA
sum(peso, na.rm = TRUE)
mean(peso, na.rm = TRUE)
median(peso, na.rm = TRUE)
idade > 25
peso == NA #exemplo
is.na(peso)

altura <- c(NA, NA, 145, 167, 165, NA)
# Criar uma rotina para contar NAs dentro do vetor altura
sum(is.na(altura))

# Matrizes ----------------------------------------------------------------

A <- matrix(1:9, nrow = 3)
A

B <- matrix(c(2, 2, 6, 1, 3, 5), ncol = 2)
B
B [2:3,]
A [c(1,3), c(1,3)]
A [-2, -2]
A[3,3]

# multiplicação de matrizes
A %*% B

# inverter a matriz A
C <- matrix(c(1:8,10), ncol = 3)
solve(C)

# observando a matriz identidade
C %*% solve(C)

A <- matrix(c(2,3,4,-5,-4,2,4,2,3), nrow = 3)
A
B <- matrix(c(4,1,17), nrow = 3)
B

Ai <- solve(A)%*%B
Ai

# transpor a matriz B
t(B)

# Data.frames -------------------------------------------------------------
dados <- data.frame(
  nomes = c("Ana", "Bruno", "Carla", "Diego", "Fernanda"),
  idade = c(20, 22, 19, 21, 23),
  notas = c(8.5, 2.0, 9.2, 3.8, 8.0)
)
dados
nrow(dados)
ncol(dados)
length(dados) # número de colunas

# Subconjuntos de dados com bruno e diego
dados [c(2,4),]

# Nome da linhas
rownames(dados)
names(dados) # colnames (dados)
colnames(dados)

#mudando o nome das linhas
rownames(dados)<- c("i","ii","iii","iv","v")
dados

#soma de notas
sum(dados$notas)

#média de idades
mean(dados$idade)

#média das idades das linhas 2 e 4
mean(dados$idade[c(2,4)])

# Calcular os resultados, sendo reprovado para notas <5, caso contrario aprovado
dados$resultados <- ifelse(dados$notas<5, "Rep", "Apr")
dados

#Vamos excluir uma coluna do banco de dados
dados <- dados [-4]
dados

# Colocar linha vi
novo <- data.frame(nomes= "Rodolfo", idade= 24, notas= 7.4)
rownames(novo) <- "vi"
novo

# Adicionar à dados a linha novo
dados <- rbind(dados,novo)
dados

# Filtrar idades menores ou iguais a 20
filtro <- dados$idade <= 21
dados[filtro,]

# ordenar os dados por notas de maneira decrescente
filtro <- order(dados$notas, decreasing = T)
dados[filtro,]

##LISTA DE EXERCÍCIOS ... 4

# Lista 04 de Exercícios --------------------------------------------------

x <- c(11,13,20,10,10,13,16,17,16,12) # 1
sum(x) # 2
min(x) # 3
max(x) # 3
max(x) - min(x) # diff(range(x)) # 4
sum(x^2) # 5
sum(x)^2 # 6
mean(x) # 7
x - mean(x)# 8
sum(x - mean(x)) # 9
sum((x - mean(x))^2) # 10
sum(x^2) - sum(x)^2/length(x) # 10
sum((x - mean(x))^2)/(length(x)-1) # 11
var(x) # 11
sd(x) # 12
sd(x) / sqrt(length(x))# 13
100*sd(x) / mean(x)# 14
A <- matrix(c(1,4,-4,2,5,-5,3,6,0),ncol=3)# 15
apply(A, 1, sum) # 16
apply(A, 2, sum) # 17
apply(A, 1, mean) # 18
apply(A, 2, mean)# 19




