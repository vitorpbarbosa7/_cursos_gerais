setwd("C:\\Users\\Vitor Barbosa\\Google Drive\\DS\\Udemy-R\\S2\\15_Valores_Missing")

# C�digo para limpeza da tela
cat("\014")

#C�digo para limpar a variable explorer
rm(list=ls())

#Dataframe para lidar com valores missing
dados = data.frame("a"=c(1,3,NA), "b" = c(4,NA,4), "c" = c(3,3,3))

#Escrever esse banco de dados em csv para checar como isso acontece no pandas:
write.csv(dados, 'dados.csv')
dados
 
mean(dados$c)
#N�o � poss�vel executar a m�dia de uma coluna com valores faltantes
mean(dados$a)

mean(dados$a, na.rm = T)

#J� desconsidera o valor Missing no Summary
summary(dados)

#Fun��o na.omit:Retorna as linhas que n�o cont�m valores missing
?na.omit()

na.omit(dados)
dados

#na.fail apenas retorna o objeto se ele n�o cont�m Missing Values
na.fail(dados)

#complete.cases: retorna quais linhas possuem todos valores e os quais n�o possuem 
complete.cases(dados)

#Treinando acessar os valores no data.frame:
dados[3,3]
dados[,]

#Retorna todas as colunas das linhas com o valor l�gico TRUE
dados[complete.cases(dados),] 

class(complete.cases(dados))
length(complete.cases(dados))

#Avalia��o de na em todos elementos:
is.na(dados)

#Substitui��o:
dados[is.na(dados)==TRUE] = 0
dados
