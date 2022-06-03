use Projeto_3;

/*Ajuste das tabelas para realizar as consultas*/
SET SQL_SAFE_UPDATES = 0;
update demonstracoes_contabeis set VL_SALDO_FINAL =  replace(VL_SALDO_FINAL,',','.');
update demonstracoes_contabeis set VL_SALDO_FINAL =  replace(VL_SALDO_FINAL,'"','');
update demonstracoes_contabeis set REG_ANS =  replace(REG_ANS,'"','');
update demonstracoes_contabeis set CD_CONTA_CONTABIL =  replace(CD_CONTA_CONTABIL,'"','');
update demonstracoes_contabeis set DESCRICAO =  replace(DESCRICAO,'"','');
SET SQL_SAFE_UPDATES = 1;

alter table relatorio_cadop modify Registro_ANS int;

alter table demonstracoes_contabeis
	modify VL_SALDO_FINAL decimal(20,2),
    modify REG_ANS int,
    modify CD_CONTA_CONTABIL int,
    modify `DATA` date;
    
    
    

	
    
    
