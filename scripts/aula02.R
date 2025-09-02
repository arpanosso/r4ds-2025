# Aula 02 de R4DS - 19/08/2025

# Tipos Primários ---------------------------------------------------------
# Strings ou caractes - só colocar tudo dentro das aspas que vira uma string
"Aluno 1"
'Prova de matemática'
"32.475"
"Exemplo de saída (em R)"
"Aluno"

# 2- Inteiros (numéricos)
1
2
-3
4L # L é a especificação do inteiro

# 3 - Float ou Double (numérico real)
2.45
-5.8

# 4 - Booleano, lógico
TRUE #SEMPRE
FALSE #SEMPRE

T #NUNCA
F #NUNCA

# Identificadores -------------------------------------------------------------
#São os nomes que atribuímos aos objetos durante o processo de programação


# Palavras Reservadas -----------------------------------------------------
#São palavras já utilizadas na linguagem nativa do R
#TRUE, T, FALSE, F, ELSE, IF, REPEAT, FOR, PRINT, LIBRARY...


# Constante e Variável ----------------------------------------------------
#Constante: seu valor não se altera durante a execução do programa
#Variável: seu valor se altera durante a execução do programa

# Operador de atribuição --------------------------------------------------
# <- ou =
# X <- (RECEBE) 2.8
# Y = (IGUAL) 5.25
# A seta é destrutiva, ou seja, se após eu colocar um após a
# primeira definição ele é destruido e atribuido a nova
#Ex:
x<- 2.8
y = 5.25
x # rodar para mostrar valor
y
x <- 'aluno'
x
#apagar apenas o x
rm(x)
#Control + shift + F10 é mais utilizado ou restart R

# Estruturas de Controle

# - sequencial
# ex: quero fazer a média
#   Ler (num1, num2)
#   Calculo da média (soma 1 e 2 / 2)
#   Print média
#   Tudo na mesma coluna
num1 <- 24 #entrada
num2 <- 28 #entrada
media <- (num1 + num2)/2 #processamento
media #saida


# - seleção próxima aula...
# - repetição próxima aula...



# LISTA 02
# 1) Utilize o R para encontrar os resultados das seguintes expressões:
1/2
23%/%4
23%%4
(200%/%10)%%4
(5^2)+3
sqrt(225)
sqrt(25)+19-23
3*5+1
1/4+2
28/7+4
3/6-7

#2 Resolva no R as seguintes expressões relacionais/lógicas:
2>3
(6<8)|(3>7)
(((10%/%2)%%6)>5)&(3<(2%%2))
!(2<3)

#3 Utilize a atribuição (<-) e resolva a expressão:
a <- 2
b <-6
c<-3
d<-4
e<-8
f<-4
x = ((a+(b/c)))/(d-(e/f))

y = ((2*x**2-3*x**(x+1))/2+sqrt(x+2)/x)/(2^x)

#4) Escreva uma rotina para calcular a média de quatro números.
num1<-100
num2<-200
num3<-300
num4<-500
media <- (num1 + num2 + num3 + num4)/4

#5) Crie uma rotina em R que, dadas as coordenadas de dois pontos quaisquer
#P(x1 , y1) e Q(x2 , y2), calcule a distância D entre eles, lembrando que:
x1 <- 2
y1 <-2
x2 <- 5
y2 <- 6
d = sqrt((x2-x1)^2+(y2-y1)^2)

#6) Dado um número inteiro A de quatro dígitos, obtenha dois
# outros números B e C sendo B formado pelos dois
# primeiros dígitos de A e C pelos dois últimos dígitos.
A <- 1234
B <- A%/%100
C <- A%%100


#7) Dado um número inteiro A de três dígitos obtenha a soma destes dígitos.
# Ex: se A vale 872 então a soma de seus dígitos será 17 (8+7+2).
A <- 728
u <- A%%10
d <- A%%100 %/% 10
m <-A%/%100
soma <- u+d+m
soma

#8) Construa um algoritmo sequencial que calcule as raízes de uma equação do 2o
# grau (ax2 + bx + c), sendo os valores de A, B e C fornecidos pelo usuário.
# Considere que a equação possui duas raízes reais, ou seja, o valor de DELTA
# e sempre maior que zero, nessas condições
a<- 1
b<- 2
c<- -3
delta <- b*b-4*a*c
x1 <- (-b+sqrt(delta))/(2*a)
x2 <- (-b-sqrt(delta))/(2*a)
x1
x2

