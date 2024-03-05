CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    sala int not null,
    serie varchar(10),
    media decimal(3,1),
    primary key (id)
);

INSERT INTO tb_alunos(nome, idade, sala, serie, media) VALUES
("João Silva", 12, 1, "7º ano", 6.5),
("Maria Santos", 14, 2, "9º ano", 9.2),
("Pedro Oliveira", 11, 1, "6º ano", 5.8),
("Ana Pereira", 13, 3, "8º ano", 6.9),
("Lucas Souza", 12, 2, "7º ano", 8.0),
("Julia Ferreira", 13, 3, "8º ano", 9.5),
("Matheus Almeida", 11, 3, "6º ano", 7.2),
("Isabela Lima", 14, 1, "9º ano", 9.0);

SELECT * FROM tb_alunos WHERE media > 7;
SELECT * FROM tb_alunos WHERE media < 7;

UPDATE tb_alunos SET media = 9.0 WHERE id = 1;