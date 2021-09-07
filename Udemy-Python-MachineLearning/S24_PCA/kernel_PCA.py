import pandas as pd

base = pd.read_csv('census.csv')

previsores = base.iloc[:, 0:14].values
classe = base.iloc[:, 14].values
                
from sklearn.preprocessing import LabelEncoder
labelencoder_previsores = LabelEncoder()
previsores[:, 1] = labelencoder_previsores.fit_transform(previsores[:, 1])
previsores[:, 3] = labelencoder_previsores.fit_transform(previsores[:, 3])
previsores[:, 5] = labelencoder_previsores.fit_transform(previsores[:, 5])
previsores[:, 6] = labelencoder_previsores.fit_transform(previsores[:, 6])
previsores[:, 7] = labelencoder_previsores.fit_transform(previsores[:, 7])
previsores[:, 8] = labelencoder_previsores.fit_transform(previsores[:, 8])
previsores[:, 9] = labelencoder_previsores.fit_transform(previsores[:, 9])
previsores[:, 13] = labelencoder_previsores.fit_transform(previsores[:, 13])

from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
previsores = scaler.fit_transform(previsores)

from sklearn.model_selection import train_test_split
previsores_treinamento, previsores_teste, classe_treinamento, classe_teste = train_test_split(previsores, classe, test_size=0.15, random_state=0)

#Importação do kernel PCA
#Utilização do kernel PCA para problemas que geralmente não são linearmente separáveis
from sklearn.decomposition import KernelPCA
kpca = KernelPCA(n_components=6,
                 kernel = 'rbf')

previsores_treinamento = kpca.fit_transform(previsores_treinamento)
#Uma vez realizado o fit_transform, utilizando o transform é ok, 
#Porque ele já se adaptou à base de dados
previsores_teste = pca.transform(previsores_teste) 

from sklearn.ensemble import RandomForestClassifier
classificador = RandomForestClassifier(n_estimators = 40,
                                       criterion = 'entropy',
                                       random_state=0)

classificador.fit(previsores_treinamento, classe_treinamento)
previsoes = classificador.predict(previsores_teste)

from sklearn.metrics import accuracy_score, confusion_matrix
acuracia = accuracy_score(classe_teste, previsoes)