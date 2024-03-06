CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

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
('Frutas', 'Diversas frutas frescas'),
('Verduras', 'Verduras frescas e orgânicas'),
('Legumes', 'Legumes frescos e cultivados localmente'),
('Raízes', 'Raízes e tubérculos diversos'),
('Temperos', 'Temperos frescos e secos');

INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Maçã', 'Fruta suculenta e saborosa', 3.50, 1),
('Alface', 'Verdura de folhas verdes', 2.20, 2),
('Tomate', 'Fruto vermelho e suculento', 4.80, 1),
('Batata', 'Tubérculo versátil', 3.90, 3),
('Cenoura', 'Raiz alaranjada e crocante', 2.50, 3),
('Limão', 'Fruta cítrica e refrescante', 5.70, 1),
('Cebola', 'Bulbo utilizado como tempero', 2.30, 5),
('Abacaxi', 'Fruta tropical doce e suculenta', 6.90, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias on categoria_id = tb_categorias.id WHERE nome_categoria = 'Frutas';