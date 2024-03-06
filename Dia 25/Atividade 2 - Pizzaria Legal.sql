CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20),
ingredientes VARCHAR(100),
preco FLOAT(5,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(20),
descricao VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Salgada', 'Pizzas com ingredientes salgados'),
('Doce', 'Pizzas com ingredientes doces'),
('Vegetariana', 'Pizzas sem carne'),
('Calzone', 'Pizzas fechadas com recheio'),
('Especial', 'Pizzas especiais');

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id) VALUES
('Margherita', 'Molho de tomate, muçarela e manjericão', 40.00, 1),
('Quatro Queijos', 'Molho de tomate, muçarela, provolone, gorgonzola e parmesão', 55.00, 1),
('Calabresa', 'Molho de tomate, muçarela, calabresa fatiada e cebola', 42.00, 1),
('Chocolate', 'Chocolate derretido com morangos', 35.00, 2),
('Vegetariana', 'Molho de tomate, muçarela, tomate, cebola, pimentão e azeitonas', 50.00, 3),
('Portuguesa', 'Molho de tomate, muçarela, presunto, ovos, cebola e azeitonas', 45.00, 1),
('Pepperoni', 'Molho de tomate, muçarela e pepperoni', 48.00, 1),
('Frango com Catupiry', 'Molho de tomate, muçarela, frango desfiado e catupiry', 52.00, 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on categoria_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on categoria_id = tb_categorias.id WHERE nome_categoria = 'Doce';