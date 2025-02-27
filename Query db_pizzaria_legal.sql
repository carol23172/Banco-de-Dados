CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao TEXT,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas( 
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255),
adicional VARCHAR(255),
valor DECIMAL(8,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

ALTER TABLE tb_pizzas
ADD CONSTRAINT fk_pizzas_categoria
FOREIGN KEY (categoria_id) 
REFERENCES tb_categorias(id);

ALTER TABLE tb_pizzas MODIFY valor DECIMAL(10,2);

INSERT INTO tb_categorias (nome, descricao) 
VALUES
("Salgada", "Borda Tradicional"),
("Salgada", "Borda Recheada de Catupiry"),
("Salgada", "Borda Recheada de Cream cheese"),
("Doce", "Borda Recheada de Chocolate"),
("Doce", "Borda Recheada de Doce de Leite");

INSERT INTO tb_pizzas (nome, descricao, adicional, valor, categoria_id)
VALUES
("Napolitana", " Molho de tomate, mussarela, tomate e parmesão", "Azeitonas pretas", 50.90, 1),
("Baiana", "Molho de tomate, calabresa moída, pimenta e cebola", "Orégano extra", 39.50, 2),
("Mexicana", "Molho de tomate, carne moída temperada, pimenta jalapeño e mussarela", "Doritos crocante", 60.00, 3),
("Bacon Supreme", "Mussarela, bacon crocante e catupiry", "Borda de cheddar", 70.50, 2),
("Toscana", "Molho de tomate, linguiça toscana e cebola", "Pimenta calabresa", 80.50, 2),
("Camponesa", "Molho de tomate, brócolis, palmito, mussarela e alho frito", "Requeijão cremoso", 90.90, 4),
("Sensação", "Chocolate ao leite derretido com morangos e leite condensado", "Granulado de chocolate", 46.00, 5),
("Romeu e Julieta", "Goiabada e queijo minas", "Queijo extra", 38.90, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizza WHERE nome LIKE "%M%";

SELECT id, nome, descricao, adicional, valor, nome AS categoria
FROM tb_pizzas 
INNER JOIN tb_categorias ON categoria_id = id;

SELECT id, nome, descricao, adicional, valor, Nome AS categoria
FROM tb_pizzas 
INNER JOIN tb_categorias  ON categoria_id = id
WHERE nome = "Doce";

DROP TABLE tb_pizzas;






