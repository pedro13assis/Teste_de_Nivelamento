import urllib3
from bs4 import BeautifulSoup


def link_arquivo(palavra_chave):
    """
    Função para encontrar link de download   
    : param palavra_chave: palavra para encontrar link  
    """

    # cria pasta pasta para  download dos arquivos e definindo caminho
    # cria pasta pasta para  download dos arquivos e definindo caminho
    

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


    #Pegar somente os links desejados
    Dados_filtro =[]
    for i in Dados: 
        if palavra_chave in i:
            Dados_filtro.append(i)

    #Pegar link do arquivo
    links = []
    for i in Dados_filtro:
        links.append(i)

    return links

    
    