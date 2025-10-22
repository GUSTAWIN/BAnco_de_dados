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
Select j.*, count(*) as Alugueis_totais
from Aluguel a join jogador j 
where a.idJogador = j.idJogador
Group by a.idJogador
having COUNT(*) > 1;

Select j.*,count(*) as Alugueis_totais
From Aluguel a join Jogador j
where a.idJogador = j.idJogador
Group by a.idJogador
Order by Alugueis_totais DESC
limit 1;
	
