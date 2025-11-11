/*
Alunos:
Gustavo Taborda Medeiros
Giovane Soldera Ribeiro
Carlos Eduardo pereira
*/
use AluguelJogos;

Select f.Primeiro_nome, f.Ultimo_nome,f.Tipo_Funcionario,f.idFuncionario,a.idFuncionario as 'Aluguel idFuncionario'
from Funcionario f join Aluguel a
where f.idFuncionario = a.idFuncionario and f.Tipo_Funcionario = 'Atendente';

Select f.Primeiro_nome, f.Ultimo_nome,f.Tipo_Funcionario,f.idFuncionario,a.idFuncionario as 'Aluguel idFuncionario'
from Funcionario f left join Aluguel a on f.idFuncionario = a.idFuncionario
where a.idFuncionario IS NULL and f.Tipo_Funcionario = 'Atendente';

/*
Listar os dados de todos(as) os(as) jogadores que realizaram mais de um aluguel, bem como os dados do jogo e do(a) atendente que fez os respectivos aluguéis
*/

SELECT j.*,Jo.*,f.*
FROM Aluguel a join jogador j join Aluguel_Jogo Aj join Jogo Jo join Funcionario f
WHERE j.idJogador IN (Select j.idJogador
from Aluguel a join jogador j join Aluguel_Jogo Aj join Jogo Jo join Funcionario f
where a.idJogador = j.idJogador and Aj.idAluguel = A.idAluguel and Aj.idJogo = Jo.idJogo and A.idFuncionario = f.idFuncionario
group by j.idJogador
having COUNT(*) > 1)
and a.idJogador = j.idJogador and Aj.idAluguel = A.idAluguel and Aj.idJogo = Jo.idJogo and A.idFuncionario = f.idFuncionario;

/*JOGADOR COM MAIOR NUMERO DE ALUGUEIS*/
Select j.*,count(*) as Alugueis_totais
From Aluguel a join Jogador j
where a.idJogador = j.idJogador
Group by a.idJogador
Order by Alugueis_totais DESC
limit 1;
	
/*JOGO MAIS ALUGADO*/
Select j.*,count(*) as Alugueis_totais
From Aluguel_Jogo a join Jogo j
where a.idJogo = j.idJogo
Group by a.idJogo
Order by Alugueis_totais DESC
limit 1;

/*LIstar dados do Jogo com maior numero de copias*/
Select j.*
From Jogo j
Order by j.Qtd_copias DESC
limit 1;

/*Listar o maior valor total de um aluguel (levar em consideração o valor da diária, o período e o número de jogadores adultos), apresentando os dados do aluguel e o valor total*/
select *, max(temp.valor_total) as Valor_Maximo from (select a.*,j.*,( DATEDIFF(a.Data_devolucao, Data_retirada) * j.V_aluguel_dia) as valor_total
from Aluguel a join Aluguel_Jogo aj join Jogo j
where a.idAluguel = aj.idAluguel and aj.idJogo = j.idJogo) as temp;
