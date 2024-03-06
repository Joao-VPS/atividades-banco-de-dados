CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos para higiene pessoal'),
('Bem-estar', 'Produtos para o bem-estar geral'),
('Perfumaria', 'Perfumes e fragrâncias');

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Paracetamol', 'Analgésico e antitérmico', 12.50, 1),
('Shampoo', 'Limpeza e cuidado dos cabelos', 18.90, 3),
('Creme Facial', 'Hidratante facial', 25.00, 2),
('Sabonete Líquido', 'Limpeza corporal', 9.80, 3),
('Protetor Solar', 'Proteção contra raios UV', 30.50, 2),
('Colírio', 'Para irritações oculares', 15.75, 1),
('Loção Corporal', 'Hidratação corporal', 20.00, 2),
('Desodorante', 'Controle do odor corporal', 8.50, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id WHERE nome_categoria = 'Cosméticos';