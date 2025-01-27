setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S3\\19_barplot")

# Código para limpeza da tela
cat("\014")

#Código para limpar a variable explorer
rm(list=ls())

library(ggplot2)

laranja = Orange
porco = ToothGrowth
names(laranja)
#Histograma
qplot(x = circumference, data=laranja)

qplot(x = circumference, data=laranja,
      geom = "histogram",
      binwidth = 10)

#Densidade:
qplot(x = circumference, data=laranja,
      geom = "density")

qplot(x = dose, data=porco,
      geom = 'bar')

qplot(x=age, y=circumference, data=laranja)

qplot(x=age, y=circumference, data=laranja,
      geom = "path")

#Color (Hue in python) - Como colorir de acordo com a legenda
qplot(x=age, y=circumference, data=laranja,
      color=Tree)

#Mudan�a de tamanho das bolinhas
#Mudan�a de formato 
#Mudan�a de cor
qplot(supp, dose, data = porco, size=len, color = dose,
      shape = supp)

#Carnaval de configura��es para o dataframe laranja:
library(RColorBrewer)
names(laranja)
qplot(x = Tree, y=circumference, data = laranja,
      size = circumference, 
      color = Tree,
      shape = Tree)

