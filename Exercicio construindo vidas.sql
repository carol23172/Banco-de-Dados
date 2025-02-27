CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
descricao TEXT,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos( 
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
valor DECIMAL(8,2),
qtd INT,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id));

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Cimento e Argamassas", "Cimentos, argamassas e produtos para alvenaria"),
    ("Tintas e Acessórios", "Tintas, pincéis, rolos e outros materiais para pintura"),
    ("Ferramentas", "Ferramentas elétricas e manuais para construção e reforma"),
    ("Hidráulica", "Canos, conexões e materiais para encanamento"),
    ("Elétrica", "Fios, lâmpadas, disjuntores e outros materiais elétricos");
    
    INSERT INTO tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES
    ("Cimento Portland 50kg", 35.90, 100, 1),
    ("Argamassa ACIII 20kg", 25.50, 80, 1),
    ("Tinta Acrílica Branco 18L", 199.90, 30, 2),
    ("Rolo de Pintura 23cm", 15.00, 50, 2),
    ("Furadeira de Impacto 500W", 249.90, 20, 3),
    ("Chave de Fenda 6mm", 9.50, 100, 3),
    ("Tubo PVC 50mm 6m", 45.00, 60, 4),
    ("Fio Elétrico 2,5mm 100m", 189.90, 40, 5);
    
    SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;
  
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 5;


    
    