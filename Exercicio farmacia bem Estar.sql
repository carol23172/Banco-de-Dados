CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
    ("Medicamentos", "Medicamentos para alívio de dores"),
    ("Cosméticos", "Produtos de cuidados pessoais"),
    ("Suplementos", "Suplementos alimentares para saúde e bem-estar"),
    ("Higiene Pessoal", "Produtos para higiene diária como escova dental"),
    ("Equipamento Medico", "Equipamento para monitoramento da saúde");
    

INSERT INTO tb_produtos (nome_produto, validade, valor, qtd, categoria_id)
VALUES
("Paracetamol ", "2025-11-20", 40.00, 2, 1),
("Protetor Solar", "2025-07-10", 30.90, 2, 2),
("Shampoo Anticaspa", "2026-09-22", 40.00, 2, 2),
("Creme hidratante corporal", "2026-02-05", 50.00, 3, 2),
("Termometro", "2025-06-21", 10.00, 4, 5),
("Hidratante labial", "2027-01-01", 5.00, 5, 2),
("Escola Dental", "2025-11-20", 20.00, 1, 4),
("Vitamina C", "2025-11-20", 70.00, 1, 3);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 70;
  
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 5;






