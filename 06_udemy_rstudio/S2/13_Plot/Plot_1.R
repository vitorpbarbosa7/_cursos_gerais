setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S2\\13_Plot")

# C�digo para limpeza da tela
cat("\014")

#C�digo para limpar a variable explorer
rm(list=ls())

dados = c(3,4,2,2,1)

# plot(dados)
# plot(dados,type = "l")
#Com linhas transpassando os pontos
plot(dados, type = "o")

#Histograma:
hist(dados)

hist(dados, freq = F)

#barplot
barplot(dados)

#boxplot:
boxplot(dados)

#pizza:
pie(dados)

#Gr�fico mais elaborado:
barplot(dados, 
        main = "T�tulo do gr�fico",
        xlab = "Nome do eixo x",
        ylab = "Nome do eixo y",
        names.arg= c("Segunda","Ter�a","Quarta","Quinta","Sexta"))