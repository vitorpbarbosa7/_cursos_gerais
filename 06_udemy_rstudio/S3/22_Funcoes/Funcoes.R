setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S2\\22_Funcoes")

# Código para limpeza da tela
cat("\014")

#Código para limpar a variable explorer
rm(list=ls())

?sample

n = sample(1:30,50,replace = TRUE)
m = sample(1:30,50,replace = TRUE)

minhafuncao = function(x){
  x+1
}

minhafuncao(5)

myfunction2 = function(x){
  print(x+1)
  print(x/5)
}

myfunction2(8)

#Fun��es com utilidades:
#V�rios procedimentos de an�lise de dados, automatizado:
resumo = function(x){
  print(mean(x))
  print(sd(x))
  hist(x)
  boxplot(x)
  par(ask=TRUE) #He will ask to plot next result
}

#Aplicando a fun��o resumo sobre o vetor m:
resumo(m)
