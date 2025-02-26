CREATE DATABASE RH_Empresa;
USE RH_Empresa;

CREATE TABLE tb_colaboradores ( 
id bigint AUTO_INCREMENT, 
nome VARCHAR(250) NOT NULL,
cargo VARCHAR(60) NOT NULL,
departamento VARCHAR(50),
salario DECIMAL NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores (nome, cargo, departamento, salario) VALUES
("Alisa", "Desenvolvedora", "TI", 3300.00),
("Atlas", "Gerente", "ADM", 6000.00),
("Ryle", "Tecnico", "TI", 1524.00),
("Lily", "Assistente", "ADM", 1998.00),
("Emerson", "Estagiaria", "RH", 1200.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 2100.00
WHERE id = "4";

























