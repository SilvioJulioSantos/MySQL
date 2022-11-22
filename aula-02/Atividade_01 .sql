-- Autor Silvio Julio

-- Cria o Banco de dados
CREATE DATABASE db_generation_game_online;
 
-- Seleciona o Banco de dados para uso
USE db_generation_game_online;

-- Cria a tabela classes
CREATE TABLE  tb_classes(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
nivel VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);



-- Cria a tabela personagens
CREATE TABLE tb_personagens(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
poder_ataque INT NOT NULL,
defesa INT NOT NULL,
forca  INT NOT NULL,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);


-- Insere dados na tabela classes
INSERT INTO tb_classes (tipo,descricao,nivel) VALUES("Guerreiro","Causa um alto dano em Tarefas,deixando-as menos vermelhas",1);

INSERT INTO tb_classes (tipo,descricao,nivel) VALUES("Mago","Causa dano moderado em tarefas, ganha muita experiência.",2);

INSERT INTO tb_classes (tipo,descricao,nivel) VALUES("Curandeiro","Alta defesa contra danos, podem se curar e curar membro da equipe",1);

INSERT INTO tb_classes (tipo,descricao,nivel) VALUES("Gatuno","Encontra mais itens e ouro, maior chance de causar golpe",3);

INSERT INTO tb_classes (tipo,descricao,nivel) VALUES("Arqueiro","O arqueiro é um dos arqueiros mais nobres da floresta e são habilidosos com diversas armas",4);

-- ========================================================================================================================================

-- Insere dados na tabela personagens
INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("XanaCarnivora",2070,1900,3300,2);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Tatycomendo",2500,2000,4000,3);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Godzilla",2800,2200,5000,4);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Grasshopper",2070,1000,3300,1);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Handsome",1800,900,2700,1);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Harvard",1500,890,2300,2);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Hero",1490,1030,2510,1);

INSERT INTO tb_personagens (nome,poder_ataque,defesa,forca,classes_id ) VALUES("Gizmo",1630,1200,2830,2);




SELECT * FROM tb_classes;


SELECT * FROM tb_personagens;  

-- Relacionado duas tabelas através do id
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id; 

-- poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens where poder_ataque > 2000;

-- Personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id  = tb_classes.id
WHERE tb_classes.tipo = "Mago" ORDER BY tb_personagens.nome;

