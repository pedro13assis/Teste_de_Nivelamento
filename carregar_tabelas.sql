use Projeto_3;
/*Carrecar tabelas com os dados dos nossos arquivos CSVs*/
/*Quando utilizar arquivo em sua maquina corrija o endereço da base de dados*/ 
/*Carregar dados do cadop para tabela relatorio_cadop*/
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\Relatorio_cadop_teste_3.csv' 
                        into table relatorio_cadop  
                        character set latin1 
                        fields terminated by ';'
                        ignore 3 lines;

/*Carregar dados dos trimestrais  para tabela a demonstracoes_contabeis */
/*2020*/
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\1T2020.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;

load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\2T2020.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;
                        
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\3T2020.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;
                        
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\4T2020.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;
/*2021*/
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\1T2021.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;
                        
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\2T2021.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;
                        
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\3T2021.csv' 
						into table demonstracoes_contabeis
                        character set latin1
                        fields terminated by ';'
                        ignore 1 lines;

/* Aruivo do quarto trimestre de 2021 stá fora do padrão das outras tabelas */
load data local infile 'C:\\Users\\pedro\\OneDrive\\Documentos\\Projetos\\Projeto_3\\BD\\4T2021.csv' 
						into table demonstracoes_contabeis_aux
                        character set utf8
                        fields terminated by ';'
                        ignore 1 lines;