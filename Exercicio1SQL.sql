CREATE DATABASE db_generetion_game_online;
USE db_generetion_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao TEXT,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
habilidade_ataque INT,
habilidade_defesa INT,
nivel INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
("Guerreiro", "Especialista em combate corpo a corpo."),
("Mago", "Utiliza feitiços poderosos para atacar a distância."),
("Arqueiro", "Mestre em ataques de longa distância com o Arco e flecha."),
("Paladino", "Luta em nome de uma Divindade e tem alta resistência a danos."),
("Clerigo", "Utiliza Magia para curar e ajudar aliados."); 

INSERT INTO tb_personagens (nome, habilidade_ataque, habilidade_defesa, nivel, classe_id) VALUES
("Miwa", 1900, 1500, 3, 3),           -- Arqueira
("Aoto", 2500, 1700,  3,  1),         -- Guerreiro
("Aelin", 2200, 1900, 2, 1),          -- Guerreira
("Shadow", 2200, 900,  2, 2),         -- Mago
("Alan", 2500, 900,  4, 2),           -- Mago
("Adara", 1500, 1500,  2, 5),         -- Cleriga
("Celeste", 1700, 1500,  3, 5),       -- Cleriga
("Carther", 1900, 2500,  4, 4);       -- Paladino

SELECT * FROM tb_personagens WHERE habilidade_ataque > 2000;
SELECT * FROM tb_personagens WHERE habilidade_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- parte que une personagem e classes
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id; 

SELECT * FROM tb_personagens  INNER JOIN tb_personagens tb_classe ON tb_personagens.personagens.classe_id = tb_classe.id
WHERE classe_id = 2;


