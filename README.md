# Teste_de_Nivelamento
 Teste de nivelamento do processo seletivo da Intuitive Care

## Teste 1 - WebScraping

- Acessar o site: https://www.gov.br/ans/pt-br/assuntos/consumidor/o-que-o-seu-plano-de-saude-deve-cobrir-1/o-que-e-o-rol-de-procedimentos-e-evento-em-saude;
- Baixar os Anexos I ao Anexo IV;
- Agrupar os anexos em um mesmo arquivo compactado (ZIP, RAR, ...).

 - **Teste foi realizado em python**
 - _Códigos estão brevemente comentados_


## Teste 2 - Transformação de dados
 
- Extrair do pdf do anexo I do teste 1 acima os dados da tabela Rol de Procedimentos e Eventos em Saúde (todas as páginas); 
- Salvar dados em uma tabela estruturada, em csv;
- Zipar o csv num arquivo "Teste_{seu_nome}.zip". 
- Com a legenda no rodapé substituir os dados abreviados das colunas OD e AMB para as respectivas descrições.
  - Legenda:  
   - OD: Seg. Odontólogica   
   - AMB: Seg. Ambulatorial

 - **Teste foi realizado em python**

 - _Códigos estão brevemente comentados_

## Teste 3 - Banco de dados

- Tarefas de Preparação (podem ser feitas manualmente):
  -Baixar os arquivos dos últimos 2 anos no repositório público: http://ftp.dadosabertos.ans.gov.br/FTP/PDA/demonstracoes_contabeis/;
  -Baixar csv anexo (Relatorio_cadop(1) (esta em anexo no e-mail)).

- Criar queries para criar tabelas com as colunas necessárias para o arquivo csv.
- Queries de load: criar as queries para carregar o conteúdo dos arquivos obtidos nas tarefas de preparação
  - Atenção ao encoding dos arquivos no momento da importação!
- Montar uma query analítica que traga a resposta para as seguintes perguntas:
  - Quais as 10 operadoras que mais tiveram despesas com "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre?
  - Quais as 10 operadoras que mais tiveram despesas com "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último ano?

 - **Teste foi realizado com MySQL 8**

 - _Códigos estão brevemente comentados_
 - Ordem de execução 
   - (criar_tabelas.sql -> carregar_tabelas.sql -> agrupamento_tabelas.sql -> ajuste_tabelas.sql)
   - -> ultimo_tri.sql
   - -> ultimo_ano.sql

