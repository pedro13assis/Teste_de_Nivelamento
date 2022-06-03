/*create database Projeto_3;

/* Criar tabela para as demonstrações contabeis trimestrias*/
use projeto_3;

/*drop table demonstracoes_contabeis;
drop table relatorio_cadop;
drop table demonstracoes_contabeis_aux;*/

/*Criando tabelas para as demonstrações contabeis*/
create table demonstracoes_contabeis
(
    `DATA` text,  
    REG_ANS text not null,
    CD_CONTA_CONTABIL text,
    DESCRICAO text, 
    VL_SALDO_FINAL text
)ENGINE = InnoDB;

/*Tabela auxiliar para 4T2021 que está em um formato diferente 
 - tem uma coluna a mais 
 - data esta em outro formato */
create table demonstracoes_contabeis_aux
(
    `DATA` text,  
    REG_ANS text not null,
    CD_CONTA_CONTABIL text,
    DESCRICAO text, 
    VL_SALDO_INICIAL text,
    VL_SALDO_FINAL text
)ENGINE = InnoDB;

/*Criar tabela para o relatorio cadop teste 3*/
create table relatorio_cadop
(
    Registro_ANS text not null,
    CNPJ text,
    Razao_Social text,
    Nome_Fantasia text,
    Modalidade text,
    Logradouro text,
    Numero text,
    Complemento text,
    Bairro text,
    Cidade text,
    UF text,
    CEP text,
    DDD text,
    Telefone text,
    Fax text,
    Endereco_eletronico text,
    Representante text,
    Cargo_Representante text,
    Data_Registro_ANS text
)ENGINE = InnoDB;
