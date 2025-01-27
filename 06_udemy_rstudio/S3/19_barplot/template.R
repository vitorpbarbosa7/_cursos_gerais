setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S3\\19_barplot")

# Código para limpeza da tela
cat("\014")

#Código para limpar a variable explorer
rm(list=ls())

dados = 4:8

names(dados)
names(dados) = 1:5
dados
names(dados) = c("a","b","c","d","e")
names(dados) = c("abacate","beringela","cebola","laranja","pera")

#Biblioteca de cores:
library(RColorBrewer)
?brewer.pal
cores = brewer.pal(5, "Paired")
# 
# Accent	8
# Dark2	8
# Paired	12
# Pastel1	9
# Pastel2	8
# Set1	9
# Set2	8
# Set3	12

barplot(dados,
        xlab = "Elementos",
        ylab = "Quantidades",
        col = cores,
        border = cores)


#Orange
laranja = Orange
porco = ToothGrowth

?ToothGrowth

dim(table(porco$supp))

#barplot por suplemento
barplot(tapply(porco$len, porco$supp, mean),
        xlab = "Suplemento",
        ylab = "M�dia do comprimento do dente",
        col = brewer.pal(dim(table(porco$supp)),"Pastel1"))

example("barplot")
?barplot
#barplot por dose:
barplot(tapply(porco$len, porco$dose, mean),
        xlab = "Dose",
        ylab = "M�dia do comprimento do dente",
        col = brewer.pal(dim(table(porco$dose)),"Pastel1"))

#Base orange
barplot(tapply(laranja$circumference,laranja$age, mean),
        xlab = "Idade da laranjeira",
        ylab = "Circunfer�ncia da laranja",
        col = brewer.pal(dim(table(laranja$age)),"Pastel1"),
        main = "Circufer�ncia da laranja em fun��o da idade",
        la)

    