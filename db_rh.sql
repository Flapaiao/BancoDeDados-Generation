CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    dataadmissao DATE NOT NULL,
    salario DECIMAL(6,3) NOT NULL
);

INSERT INTO tb_funcionarios(nome, cargo, dataadmissao, salario)
VALUES ("Andre Gomes", "Desenvolvedor Senior", "2020-06-06", 13.200);
INSERT INTO tb_funcionarios(nome, cargo, dataadmissao, salario)
VALUES ("Renata Silva", "Desenvolvedora Pleno", "2021-10-15", 7.900);
INSERT INTO tb_funcionarios(nome, cargo, dataadmissao, salario)
VALUES ("Ricardo Freitas", "Desenvolvedor junior", "2022-11-20", 2.900);
INSERT INTO tb_funcionarios(nome, cargo, dataadmissao, salario)
VALUES ("Barbara Barros", "Desenvolvedora Junior", "2023-09-10", 2.900);
INSERT INTO tb_funcionarios(nome, cargo, dataadmissao, salario)
VALUES ("Cintia Ribeiro", "Desenvolvedora Junior", "2023-09-12", 2.900);

SELECT * FROM tb_funcionarios WHERE salario > 3.000;
SELECT * FROM tb_funcionarios WHERE salario < 3.000;

SELECT * FROM tb_funcionarios;

SET SQL_SAFE_UPDATES = 1;

UPDATE tb_funcionarios SET cargo = "Desenvolvedor Pleno", salario = 7.900 WHERE id = 3;