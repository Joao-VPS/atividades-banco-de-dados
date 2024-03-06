CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(20),
descricao_produto VARCHAR(100),
preco FLOAT(5,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(20),
descricao_categoria VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Tintas', 'Produtos para pintura de paredes e superfícies'),
('Ferramentas', 'Ferramentas diversas para construção e manutenção'),
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Materiais elétricos para instalações e manutenções'),
('Madeiras', 'Madeiras diversas para construção e acabamento');

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Tinta Látex Branca', 'Tinta para pintura interna e externa', 120.00, 1),
('Chave de Fenda', 'Ferramenta para apertar ou afrouxar parafusos', 15.50, 2),
('Vaso Sanitário', 'Vaso sanitário para instalação hidráulica', 250.00, 3),
('Disjuntor', 'Dispositivo de segurança para circuitos elétricos', 35.90, 4),
('Tábua de Pinus', 'Tábua de madeira para diversas finalidades', 18.75, 5),
('Massa Corrida', 'Massa para correção de imperfeições em paredes', 90.00, 1),
('Chuveiro Elétrico', 'Chuveiro para banho com aquecimento elétrico', 120.00, 4),
('Broca para Concreto', 'Broca para perfuração em concreto', 12.80, 2);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id WHERE nome_categoria = 'Hidráulica';