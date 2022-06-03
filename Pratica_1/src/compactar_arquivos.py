
import os
import shutil



def compactar(arquivo,local):
    """
    Função para compactar arquivos
    :param arquivo: caminho para o arquivo a ser compactado
    :param local: local em que o arquivo vai ser compactado
    """
    
    try:
        if os.path.exists(arquivo):
            #criar um arquivo .zip 
            shutil.make_archive('Arquivos', 'zip', local, arquivo)
    except IndexError as e:
        print("Exceção causada:", e)

    