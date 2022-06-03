
import os
import shutil



def compactar(Arquivo,Local,Nome):
    """
    Função para compactar arquivos
    :param arquivo: caminho para o arquivo a ser compactado
    :param local: local em que o arquivo vai ser compactado
    :param Nome: Nome do arquivo a ser compactado
    """
    
    try:
        if os.path.exists(Arquivo):
            #criar um arquivo .zip 
            shutil.make_archive(Nome, 'zip', Local, Arquivo)
    except IndexError as e:
        print("Exceção causada:", e)

    