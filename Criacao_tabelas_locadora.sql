/*
Alunos:
Gustavo Taborda Medeiros
Giovane Soldera Ribeiro
Carlos Eduardo pereira
*/
create DataBase AluguelJogos;
use AluguelJogos;

create table Jogador(
	idJogador int auto_increment not null primary key,
    Primeiro_nome varchar(45) not null,
    Ultimo_nome varchar(45) not null,
    Celular varchar(45) not null
);

create table Funcionario(
	idFuncionario int auto_increment primary key not null,
    Primeiro_nome varchar(45) not null,
    Ultimo_nome varchar(45) not null,
    Celular varchar(45) not null,
    Tipo_funcionario ENUM("Gerente","Atendente") not null,
    idGerente int,
    foreign key (idGerente) references Funcionario (idFuncionario)
);

create table Jogo(
	idJogo int auto_increment not null primary key,
    Categoria ENUM("Casual","Premium","Colecionador") not null,
    Qtd_copias int not null,
    V_aluguel_dia float not null
);

create table Aluguel(
	idAluguel int auto_increment not null primary key,
    Data_retirada DATE not null,
    Data_devolucao DATE not null,
    Nmr_joga_adultos int not null,
    Nmr_joga_menores int not null,
    idJogador int not null,
    foreign key (idJogador) references Jogador (idJogador),
    idFuncionario int not null,
    foreign key (idFuncionario) references Funcionario (idFuncionario)
);

create table Aluguel_Jogo(
	idAluguel int not null ,
    foreign key (idAluguel) references Aluguel (idAluguel)  on delete cascade,
    idJogo int not null,
    foreign key (idJogo) references Jogo (idJogo) on delete cascade
);