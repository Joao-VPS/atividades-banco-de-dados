CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(50),
classe bigint,
poder_ataque int,
inteligencia enum('alta', 'media', 'baixa'),
primary key (id),
foreign key (classe) references tb_classes (id)
);

CREATE TABLE tb_classes(
id bigint auto_increment,
nome varchar(12),
descricao varchar(100),
habilidades varchar(50),
primary key (id)
);

INSERT INTO tb_classes(nome, descricao, habilidades) VALUES
('Guerreiro', 'Especializado em combates corpo a corpo', 'Proficiente em armas e armaduras pesadas'),
('Mago', 'Usa magia para manipular energia e elementos', 'Lança feitiços poderosos'),
('Bárbaro', 'Utiliza fúria e força bruta em combate', 'Fúria descontrolada e resistência a danos'),
('Arqueiro', 'Perito em combate à distância', 'Rastreio, caça e habilidades de sobrevivência'),
('Ladino', 'Especializado em furtividade e astúcia', 'Habilidade em furtar, arrombar e desarmar.');

INSERT INTO tb_personagens(nome, classe, poder_ataque, inteligencia) VALUES
('Aria', 4, 2198, 'alta'),
('Throg', 1, 1127, 'baixa'),
('Lyra', 2, 2999, 'alta'),
('Drax', 3, 753, 'baixa'),
('Sylas', 5, 2674, 'media'),
('Isolde', 1, 1956, 'media'),
('Thalia', 2, 1785, 'alta'),
('Garrosh', 2, 3140, 'media');

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_ataque > 1000 AND poder_ataque < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%c%' or nome LIKE '%C%';

SELECT * FROM tb_personagens inner join tb_classes on tb_personagens.classe = tb_classes.id;
SELECT * FROM tb_personagens inner join tb_classes on tb_personagens.classe = tb_classes.id WHERE tb_classes.nome = 'Mago';