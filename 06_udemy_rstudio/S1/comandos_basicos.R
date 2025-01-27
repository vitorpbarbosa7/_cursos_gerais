# cerquilha/jogo-da-velha/hash utilizado para fazer comentários, o código não é lido pelo console do R
# aspas "" e '' também para comentários

#Coment�rios
"Coment�rio colorido"
"comentário aleatório"

# aspas são utilizadas também em funções

#Comandos básicos no R
1+1
2-1
3*4
6/3

2^3

5 %/%2 #divisão de números inteiros

2+1==3 #verdadeiro
2==3 #falso

2<=3
2>=3

# "<-" e "=" utilizados para criar objetos 
#Maneira estranha de atribuir valor a uma vari�vel
x<- 5

x+2
#Maneira normal de criar uma vari�vel, n�o aquela estranha
x = 4

# () parênteses são utilizados em funções
funcao�o(argumento,argumento)

"Fun��o mais b�sica do R � essa fun��o chamada c"
x= c(1,2,3) # c é uma função para concatenar elementos
# se tudo estiver em parentesis o R 'imprime' o objeto

"Ao colocar o c�digo entre par�nteses ele vai imprimir"
(x<- c(1,2,3))
x
"Algumas precisaam realmente do print"
print(x)

x #erro

# : algo como "até"
"Dois pontos (:) no R funciona como se fosse um 'at�'"
1:20
"Indexa��o em R � 1?"
x<- 20:30

# [] dá acesso aos elementos de um objeto

"Colchetes fofinhos igual Python"
x[3]

# Operadores lógicos
"Slices fofinhos, me retorne x maior que 25 e x menor que 25"
x[x>25]
x[x<25]

"S�o operadores l�gicos"
x[x>22 & x<28] # x maior que 22 E menor que 28
"Ou em R � | a famosa barra retona"
x[x<23 | x>27] # x menor que 23 OU maior que 27

x[x>22 & x!=28]

# funções dentro de funções
# algo semelhante a operações aritméticas
x+ 1
(x+1)* 2

plot(x)
plot(x^10)
log(x)
plot(log(x))

