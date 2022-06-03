from operator import length_hint
import urllib3
from bs4 import BeautifulSoup
import wget
from compactar_arquivos  import compactar
import os
import pathlib


# cria pasta pasta para  download dos arquivos e definindo caminho
p = pathlib.Path('Pratica_1').parent.absolute()
if not(os.path.isdir('Arquivos')):
    os.makedirs(pathlib.Path(p,'Arquivos'))
Pasta_projeto = os.path.abspath('Arquivos')

# URL da pagina que contem os arquivos
url = "https://www.gov.br/ans/pt-br/assuntos/consumidor/o-que-o-seu-plano-de-saude-deve-cobrir-1/o-que-e-o-rol-de-procedimentos-e-evento-em-saude"


# Armazenar objeto do tipo PoolManager para manipular a conexao
conexao = urllib3.PoolManager()

# Armazenar conteudo da pagina
retorno = conexao.request('GET',url)


# Armazenar codigo HTML
pagina = BeautifulSoup(retorno.data,'html.parser')


# lista vazia para armazenar todos os links
Dados = [ ]

#percorrer toda a pagina e adicionar os links requeridos(Anexo) em uma lista
for link in pagina.find_all('a',class_ = 'internal-link'):
    Dados.append(link.get('href'))

#print(length_hint(Dados))
#print(Dados)



#Pegar somente os links desejados
Dados_filtro =[]
for i in Dados: 
    if "Anexo_" in i:
       Dados_filtro.append(i)

# print(length_hint(Dados_filtro))
# print(Dados_filtro)

#Realizar download
for i in Dados_filtro:
    wget.download(i,Pasta_projeto)


# Funçao quem campacta a pasta com os arquivos
compactar(Pasta_projeto,p)