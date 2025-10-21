drop database AluguelJogos;
use AluguelJogos;
/*INSERIR*/

insert into Jogador (idJogador,Primeiro_nome,Ultimo_nome,Celular) values
 (1,'João','Carlos',9988-22334),
 (2, 'Maria', 'Silva', 9999-11223),
 (3, 'Pedro', 'Almeida', 9977-33445),
 (4, 'Ana', 'Souza', 9966-55667),
 (5, 'Lucas', 'Fernandes', 9955-77889),
 (6, 'Carla', 'Mendes', 9944-99001);
 
 /*casual = 5, premiu = 15, colecionador = 30*/
 insert into Jogo (idJogo,Categoria,Qtd_copias,V_aluguel_dia) values
 (1,'casual',60,5.00),
 (2,'premium',30,15.00),
 (3,'casual',52,5.00),
 (4,'colecionador',18,30.00),
 (5,'premium',30,15.00),
 (6,'colecionador',20,30.00),
 
funcionario insert into Funcionario (idFuncionario, Primeiro_nome, Ultimo_nome, Celular, Tipo_funcionario, idGerente) values
 (1, 'Carlos', 'Silva', '9876-54321', 'Gerente', NULL),
 (2, 'Ana', 'Moura', '9887-65432', 'Atendente', 1),
 (3, 'Lucas', 'Pereira', '9898-76543', 'Atendente', 1),
 (4, 'Mariana', 'Alves', '9909-87654', 'Atendente', 1),
 (5, 'Rafael', 'Santos', '9910-98765', 'Atendente', 1),
 (6, 'Beatriz', 'Costa', '9921-09876', 'Atendente', 1),
 (7, 'Gustavo', 'Rocha', '9932-10987', 'Atendente', 1);
 
 insert into Aluguel (idAluguel, Data_retirada, Data_devolucao, Nmr_joga_adultos, Nmr_joga_menores, idJogador, idFuncionario) values
 (1, '2025-10-01', '2025-10-05', 2, 1, 3, 2);
 (2, '2025-10-02', '2025-10-06', 1, 2, 4, 3),
 (3, '2025-10-03', '2025-10-07', 3, 0, 5, 6),
 (4, '2025-10-04', '2025-10-08', 2, 2, 6, 4),
 (5, '2025-10-05', '2025-10-09', 1, 1, 6, 5),
 (6, '2025-10-06', '2025-10-10', 2, 0, 1, 2),
 (7, '2025-10-07', '2025-10-11', 3, 1, 2, 3),
 (8, '2025-10-08', '2025-10-12', 1, 3, 3, 7),
 (9, '2025-10-09', '2025-10-13', 2, 2, 4, 4),
 (10, '2025-10-10', '2025-10-14', 1, 0, 3, 5),
 (11, '2025-10-11', '2025-10-15', 3, 1, 6, 4),
 (12, '2025-10-12', '2025-10-16', 2, 1, 6, 3);
 