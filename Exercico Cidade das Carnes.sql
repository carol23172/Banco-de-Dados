CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
descricao TEXT,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos( 
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
validade DATE,
valor DECIMAL(8,2),
qtd INT,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id));


INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Carnes Bovinas", "Carnes de boi como picanha, alcatra e costela"),
    ("Carnes Suínas", "Carnes de porco como lombo, costelinha e pernil"),
    ("Carnes de Aves", "Carnes de frango, peru e pato"),
    ("Embutidos", "Produtos como linguiça, salame e mortadela"),
    ("Carne Moída", "Carne bovina e suína moída para preparo de diversos pratos");
    

INSERT INTO tb_produtos (nome_produto, validade, valor, qtd, categoria_id)
VALUES
    ("Picanha Bovina", "2025-12-10", 89.90, 10, 1),  
    ("Costelinha Suína", "2025-11-05", 45.00, 15, 2),  
    ("Peito de Frango", "2025-10-20", 25.50, 20, 3),  
    ("Linguiça Toscana", "2025-09-15", 18.90, 25, 4),  
    ("Carne Moída de Patinho", "2025-08-30", 39.99, 12, 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;
  
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 4;








