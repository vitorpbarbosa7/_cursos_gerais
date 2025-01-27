setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S2\\12_Apply")

# C�digo para limpeza da tela
cat("\014")

#C�digo para limpar a variable explorer
rm(list=ls())

#Aula:
dados2 = data.frame("col1" = 1:5,
                    "col2" = c(5,6,9,10,20))

dados2

#apply - aplica uma fun��o a uma linha ou colunas de um dataframe ou matriz

?apply

apply(dados2, 2, sum) #Soma das colunas

apply(dados2,1,sum) #soma das linhas

#Utilizando a m�dia com o apply:
apply(dados2,2,mean)
#O resultado � similar ao quando utilizado colMeans
colMeans(dados2)

#Para a linha:
apply(dados2, 1, mean)

#Fun��o tapply:
?tapply

dados3 = data.frame("col1" = c(1:5),
                    "col2" = c(5,6,9,10,20),
                    "col3" = c("a","b","b","a","a"))
  