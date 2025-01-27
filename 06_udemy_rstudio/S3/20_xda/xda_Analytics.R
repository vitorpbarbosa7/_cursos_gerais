setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S3\\19_barplot")

# Código para limpeza da tela
cat("\014")

#Código para limpar a variable explorer
rm(list=ls())

iris = iris

#Biblioteca com ferramentas de desenvolvedores
library(devtools)

#Uma vez carregado o devtools, posso utilizar a fun��o install_github
install_github("ujjwalkarn/xda")

#Agora carregar o pacote Exploratory Data Analysis
library(xda)

#Sum�rio das informa��es do dataset
numSummary(iris)

#Resumo das vari�veis categ�ricas
charSummary(iris)

#Dados bivariados:
bivariate(iris, "Sepal.Length", "Sepal.Width")

bivariate(iris, "Species", "Sepal.Length")

#plots:
Plot(iris,"Petal.Length")
Plot(iris,"Petal.Width")
Plot(iris,"Sepal.Width")
Plot(iris,"Sepal.Length")
