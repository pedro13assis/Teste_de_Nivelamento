use Projeto_3;
SET SQL_SAFE_UPDATES = 0;
/*Ajustes para colocar tabelas no mesmo formato*/
update demonstracoes_contabeis set `DATA` =  replace(`DATA`,'"','');
update demonstracoes_contabeis_aux set `DATA` =  replace(`DATA`,'"','');
UPDATE demonstracoes_contabeis SET `DATA` =  DATE_FORMAT(STR_TO_DATE(`DATA`, '%d/%m/%Y'), '%Y-%m-%d');
UPDATE demonstracoes_contabeis_aux SET `DATA` =  DATE_FORMAT(`DATA`, '%Y-%m-%d');
SET SQL_SAFE_UPDATES = 1;

/*Agrupar tabela dados do  4T2021 com o restante*/
insert into  demonstracoes_contabeis(`DATA`, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, VL_SALDO_FINAL)
		select  `DATA`, REG_ANS, CD_CONTA_CONTABIL, DESCRICAO, VL_SALDO_FINAL from demonstracoes_contabeis_aux;
 