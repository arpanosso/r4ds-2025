# Aula 03 de R4ds - 26/08/2025


# Bloco e Identação -------------------------------------------------------
{
  x <- 5
  y <- x*2
  y
}
#control + i identa o código

# Criação de funções ------------------------------------------------------
minha_soma <- function(a, b){
  soma <- a + b
  return(soma)
}
minha_soma(-4, 4)

# criar uma função para o usuário entrar com 3 numeros e a função gerar
# um número com 3 digítos, exemplo: usuário digita 1, 5, 6.
# retorno da função é 156
cod_usuario <- function (a, b, c){
  soma <- a*100 + b*10 + c
  return(soma)
}
cod_usuario(1,5,6)
# quero converter para numérico
as.numeric(paste0(1,5,6))


# Estrutura de Seleção ----------------------------------------------------
media <- 3.1
if (media >= 5){
  print("Aprovado")
} else if(media >= 3){
  print("Recuperação")
} else
  print ("Reprovado")


num <- 1
if (num > 0){
  print("Positivo")
} else if (num < 0){
  print("Negativo")
} else
  print ("Nulo")


# Estrutura de Repetição --------------------------------------------------
n <- 10
i <- 1
while(i <= n){
  print("A vida é bela")
  i = i + 1
}

for(i in 1:10){
  print("Palmeiras não tem mundial!!")
}


#1) Dada duas variáveis numéricas, utilize a estrutura "if...else" para imprimir aquela de maior valor numérico.
num1 <- 10
num2 <- 20
if (num1 > num2){
  print(num1)
} else {
  print(num2)
}


#2) Crie uma rotina que, dado um número qualquer, informe se o número é inteiro ou decimal.

x <- 4.7
if(x %% 1 != 0){
  print ("decimal")
} else{
  print ("inteiro")
}

#3) Construa um script que classifique um valor numérico em positivo ou negativo.

num <- 1
if (num > 0){
  print("Positivo")
} else if (num < 0){
  print("Negativo")
} else
  print ("Nulo")


#4) Faça um código que verifique se uma variável é do tipo
# caractere, e teste se a letra digitada é vogal ou consoante.

z <- "p"
if (is.character(z)){
  if( z == "a"|z == "e"|z == "i"|z == "o"|z == "u"|
      z == "A"|z == "E"|z == "I"|z == "O"| z == "U"){
    print("vogal")
  } else if (z == "0"|z == "1"|z == "2"|z == "3"|z == "4"|
             z == "5"|z == "6"|z == "7"|z == "8"|z == "9"|z == "0"){
    print("numero em formato de texto")
  } else {
    print ("Consoante")
  }
} else{
  print ("valor numerico")
}

# 5
numero <- 10
if(numero %% 2 == 0){
  print("Par")
}else{
  print("Ímpar")
}

# 6
a <- 1
b <- -2
c <- 3
delta <- b*b-4*a*c

if(delta==0){
  x <- -b/2/a
  print(x)
}else if(delta >0){
  x1 <- (-b+sqrt(delta))/2/a
  x2 <- (-b-sqrt(delta))/2/a
  print(x1)
  print(x2)
}else{
  print("Raízes imaginárias")
}

# 7
a <- 4
b <- 4
c <- 4
if(a < b+c & b < a+c & c < a+b){
  if(a == b & b==c){
    print("Triângulo Equilátero")
  }else if(a==b | a==c | b==c ){
    print("Triângulo Isósceles")
  }else{
    print("Triângulo Escaleno")
  }

}else{
  print("Não forma triângulo")
}

# 8
ano <- 2022

if(ano %% 400 ==0 | (ano %%4 ==0 & ano%%100 != 0) ){
  print("Bissexto")
}else{
  print("Não bissexto")
}

#9) Faça um script para imprimir uma frase n vezes na tela do computador,
# n deve ser um número fornecido
# pelo usuário, maior que zero. Utilize as estruturas while, repeate e
# for, e comente as principais diferenças
# entre elas.

frase <- " o choro é livre!"

# while = enquanto: nessa ruptura o laço é executado "enquanto" a condição
# do teste é verdadeira, para um n = 10 teremos que contar
# quantas vezes o laço foi executado, para isso utilizamos uma variável
# de contagem, geralmente i, j, k... não se esqueça de alterar
# o valor da variável de contagem dentro do laço para não cair
# em loop infinto...

n <- 10
i <- 1
while (i <= n) {
  print (frase)
  i = i + 1
}

# repeat = repita: diferente do enquanto, o laço é executado enquanto a
# condição for falsa. Também é necessário uma variável de contagem
# que deve ser alterada a cada interação.

n <- 10
i <- 1
repeat{
  print(frase)
  if (i>n) break
  i = i+1
}

# for = para: é utilizado quando sabemos exatamente quantas vezes um
# laço deve ser executado, no caso, a estrutura altera o valorda variavel
# de contagem automaticamente
for (i in 1:10){
  print (frase)
}


# 10
for(i in 1:20){
  print(i)
}

# 11
for(i in seq(0,25,2)){
  print(i)
}

for(i in seq(10,-10,-1)){
  print(i)
}

# 12
soma <- 0
for(i in 1:10){
  soma <- soma - i/i/i*(-1)^i
}
soma

# 13
num <- 175781
cont <- 0
for(i in 1:num){
  if(num%%i == 0) cont <- cont +1
}
if(cont == 2){
  print("Primo")
}else{
  print("Não primo")
}



# Desafio
advinha_numero <- function(){
  n <- 747
  repeat{
    x <- readline(prompt = "Digite um número: ")
    if(x==n) break
    if(x<n) print("Maior")
    if(x>n) print("Menor")

  }
  print("Acertou")
}
advinha_numero()
