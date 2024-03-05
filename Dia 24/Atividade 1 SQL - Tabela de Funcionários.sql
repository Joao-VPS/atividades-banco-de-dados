CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(50),
    salario decimal(6,2) not null,
    idade int,
    data_contratacao date,
    primary key (id)
);

ALTER TABLE tb_funcionarios RENAME COLUMN data_contratação TO data_contratacao;

INSERT INTO tb_funcionarios(nome, cargo, salario, idade, data_contratacao) VALUES
("Maria Silva", "Analista de Marketing", 3.200, 28, "2023-02-15"),
("Ana Santos", "Assistente Administrativo", 1.800, 25, "2022-07-10"),
("Lucas Pereira", "Designer Gráfico", 1.600, 27, "2023-09-03"),
("Luana Ferreira", "Analista de Recursos Humanos", 3.600, 29, "2023-07-03"),
("Gustavo Santos", "Técnico de Suporte", 2.200, 26, "2022-10-14");

UPDATE tb_funcionarios set salario = 3200.00 where id = 1;
UPDATE tb_funcionarios set salario = 1800.00 where id = 2;
UPDATE tb_funcionarios set salario = 1600.00 where id = 3;
UPDATE tb_funcionarios set salario = 3600.00 where id = 4;
UPDATE tb_funcionarios set salario = 2200.00 where id = 5;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;