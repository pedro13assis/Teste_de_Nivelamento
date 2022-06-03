use Projeto_3;
/*Obter as 10 operadoras que mais tiveram despesas com "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE 
   ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR" no último trimestre*/
select demonstracoes_contabeis.REG_ANS, relatorio_cadop.Razao_Social, sum(demonstracoes_contabeis.VL_SALDO_FINAL) 
	as ultimo_tri
	from demonstracoes_contabeis
	join relatorio_cadop
	on demonstracoes_contabeis.REG_ANS = relatorio_cadop.Registro_ANS
	where VL_SALDO_FINAL < 0   
    and DESCRICAO like 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR '
    and `DATA` between '2021-10-01' and '2021-12-31'
    group by REG_ANS ,  Razao_Social
	order by ultimo_tri
	LIMIT 10;