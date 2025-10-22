use AluguelJogos;

update Jogo
SET Categoria = 'colecionador'
where idJogo = 5;

update Funcionario
set Tipo_funcionario = 'gerente' where idFuncionario = 2;
update Funcionario
set Tipo_funcionario = 'Atendente' where idFuncionario = 1;
update Funcionario
set idGerente = 2 where idFuncionario != 2;
update Funcionario
set idGerente = NULL where idFuncionario = 2;

DELETE FROM Aluguel
where idAluguel = 10;


UPDATE Aluguel
set Data_Retirada = '2025-10-07'
where idAluguel = 4;
UPDATE Aluguel
set Data_Devolucao = '2025-10-12'
where idAluguel = 4;