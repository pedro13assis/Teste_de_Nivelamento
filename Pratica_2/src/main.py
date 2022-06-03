from compactar_arquivos  import compactar
from busca_link import link_arquivo
import tabula  
import os
import pathlib
import pandas as pd

#Designador para baixar arquivo correto
Nome = 'Anexo_I_Rol_2021RN_465.2021_RN473_RN478_RN480_RN513_RN536_RN537.pdf'

#Pasta para o Arquivo csv
p = pathlib.Path('Pratica_2').parent.absolute()
if not(os.path.isdir('Arquivos')):
    os.makedirs(pathlib.Path(p,'Arquivos'))


#Obter link do arquivo
Link = link_arquivo(Nome)

#Definir caminho e nome para arquivo csv
Pasta_projeto_csv = os.path.abspath('Arquivos') + "\\Anexo_1.csv"

#print(Link)
#convertendo arquivo pdf para csv
tabula.convert_into(Link[0] , Pasta_projeto_csv ,output_format="csv", pages= "all")

#Formatando Arquivo cvs, on_bad_lines usado para pular linhas com erro Obs não é recomendado
Anexo_1_formatado = pd.read_csv(Pasta_projeto_csv, encoding='ISO-8859-1', on_bad_lines="skip")

#Ajustando Legenda
Anexo_1_formatado.replace(to_replace ="OD",  value = "Seg. Odontológico",  inplace = True)
Anexo_1_formatado.replace(to_replace ="AMB",  value = "Seg. Ambulatorial",  inplace = True) 


# #Salvar Arquivo formatado
Anexo_1_formatado.to_csv("Anexo_1_formatado.csv" )

print(Anexo_1_formatado)
# #Compactar Arquivo formatado
compactar("Anexo_1_formatado.csv",None,"Teste_{" + "Pedro_Assis}")