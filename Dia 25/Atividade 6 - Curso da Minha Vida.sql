CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(50),
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
('Desenvolvimento Web', 'Cursos relacionados ao desenvolvimento de aplicações web'),
('Programação', 'Cursos relacionados à programação de software'),
('Design Gráfico', 'Cursos relacionados ao design gráfico e produção visual'),
('Marketing Digital', 'Cursos relacionados ao marketing digital e mídias sociais'),
('Finanças', 'Cursos relacionados à gestão financeira e investimentos');

INSERT INTO tb_cursos (nome_produto, descricao_produto, preco, categoria_id) VALUES
('Curso de HTML e CSS', 'Aprenda a criar páginas web com HTML e estilizá-las com CSS', 199.00, 1),
('Curso de Python para Iniciantes', 'Introdução à linguagem de programação Python', 299.00, 2),
('Curso de Photoshop Básico', 'Fundamentos do Photoshop para edição de imagens', 149.00, 3),
('Curso de Marketing de Conteúdo', 'Estratégias de marketing de conteúdo para mídias digitais', 499.00, 4),
('Curso de Análise Financeira', 'Análise de demonstrativos financeiros e indicadores', 799.00, 5),
('Curso de JavaScript Avançado', 'Aprofundamento em JavaScript e desenvolvimento de aplicações web', 699.00, 1),
('Curso de Illustrator Intermediário', 'Técnicas intermediárias de ilustração vetorial com Adobe Illustrator', 349.00, 3),
('Curso de SEO Avançado', 'Técnicas avançadas de otimização de sites para mecanismos de busca', 899.00, 4);

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome_produto LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias on categoria_id = tb_categorias.id;
SELECT * FROM tb_cursos INNER JOIN tb_categorias on categoria_id = tb_categorias.id WHERE nome_categoria = 'Programação';