CREATE DATABASE db_estoque_ecommerce;
USE db_estoque_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    produto varchar(255) not null,
    preco decimal(6,2) not null,
    quantidade_disponivel int,
    descricao varchar(255),
    marca varchar(15),
    primary key (id)
);

INSERT INTO tb_produtos(produto, preco, quantidade_disponivel, descricao, marca) VALUES
("Smartphone Galaxy A32", 1000, 50, "Smartphone Android", "Sumsang"),
("Notebook Inspiron 15", 3500, 20, "Notebook de alta performance", "Dellete"),
("Fone de Ouvido Bluetooth", 300, 100, "Fone de ouvido sem fio", "JBlue"),
("Mochila Executiva", 150, 200, "Mochila para laptop, tablets e documentos", null),
("Smarth TV LED 50 polegadas", 2000, 30, "TV com resolução 4K", "Sono"),
("Cafeteira Elétrica", 100, 150, "Cafeteira com capacidade para 12 xícaras", null),
("Camisa Polo", 250, 80, "Camisa clássica da Lagosta", "Lagosta"),
("Câmera Digital EOS Rebel", 800, 40, "Câmera DSLR com sensor de 24.1MP", "Canhão");

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 2450 WHERE id = 2;