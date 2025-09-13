# Aula 05 de R4DS - 09/09/2025

# Pacotes no R ------------------------------------------------------------
(.packages()) #mostrando pacotes no ambiente
aov # função da análise de variância
(.packages(all.available = TRUE)) # pacotes disponiveis para usar
library(MASS) # carregando pacotes
(.packages())

# Baixar e isntalar um pacote
# 1- Acessar a aba "Packages"
# 2- Selecionar o botão "Install"
# 3- Digitar o nome do pacote "agricolae"
# 4- Pressionar "Install" o pacote será baixado e instalado.
#install.packages("janitor") # instalação por linha de comando
# instalar o tidyverse


# Pipe --------------------------------------------------------------------
x<- c(11, 12, 14, 18, 17)
mean(x)
x |>  # CTRL + Shift + M
  mean()# Pipe line

# Calcular a assimetria dos dados a partir da função de assimetria do
#pacote agicolae, sem carregar o pacote. Para isso vamos utilizar o
#operador :: (cerquinha)
x |>
  agricolae::skewness() |>
  round(2)
x |>
  agricolae::kurtosis() |>
  round(2)

# Exemplo de assimetria
y<- rbinom(5000, 10, 0.1)
y

# Histograma de y
y |>
  hist()

y |>
  agricolae::skewness()

# Buscar o help da funçã "mean"
# Na aba Help e digitar o nome da função
??mean # qualquer ocorrência do termo
?mean # função específica


# Entrada de Dados --------------------------------------------------------
# Lendo a base csv. (separado com ,)
read.csv("data-raw/imdb.csv")

# Lendo csv2. (separado por ; com nomes entre "" (Caracteres))
read.csv2("data-raw/imdb2.csv")

# lando um xlsx
# install.packages("readxl")
readxl::read_xlsx("data-raw/imdb.xlsx")
# resposta da função é uma tibble (uma tabela do tidyverse)

# Salvando em formato RDS -------------------------------------------------
library(tidyverse)
library(readxl)
dados<- read_xlsx("data-raw/emissao-co2-solo.xlsx") |>
  janitor::clean_names()
glimpse(dados)
write_rds(dados,"data/emissao-co2-solo.rds")


# Verbos do Tidyverse -----------------------------------------------------
# filter()
# select()
# mutate()
# arrange()
# group_by()
# summarize()
