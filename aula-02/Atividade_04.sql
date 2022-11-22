-- Autor Silvio Julio

-- Cria o Banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- Seleciona o Banco de dados para uso
USE db_cidade_das_carnes;


 
 -- Cria a tabela tb_categorias
 CREATE TABLE  tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Cria a tabela tb_produtos
CREATE TABLE tb_produtos(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
forma_pagamento VARCHAR(255) NOT NULL,
kilo VARCHAR(255) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


-- Insere dados na tabela categorias
INSERT INTO tb_categorias (tipo,descricao) VALUES("Bovinos"," Cupim, Alcatra,Patinho");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Suínos","Lombo,Bisteca,Paleta");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Aves","Coxa, Asa");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Peixes"," Sardinha, Cação,Pintado");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Outras","Carnes");


-- ========================================================================================================================================

-- Insere dados na tabela produtos
INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Carne tipoA", 150.00,"cartão de crédito","3kg",1);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Suínos tipoB", 50.00,"cartão de crédito","5kg",2);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Aves tipoC", 80.00,"cartão de débito","5kg",3);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Peixes tipoP", 100.00,"cartão de crédito","4,6kg",4);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Suínos tipoA", 90.00,"cartão de crédito","8kg",2);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Carne tipoB", 48.00,"cartão de crédito","2kg",1);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Carne outras tipoZ", 51.00,"cartão de crédito"," 6kg",5);

INSERT INTO tb_produtos (nome,preco,forma_pagamento,kilo,categorias_id) VALUES("Carne tipoAA", 250.00,"cartão de crédito","2kg",1);





SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;  
-- categorias_id 
-- Relacionado duas tabelas através do id
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_pizzas.categorias_id  = tb_categorias.id; 

-- poder de ataque seja maior do que 50.00
SELECT * FROM tb_produtos where preco > 50.00;

-- Produtos cujo preco do preco esteja entre 50.00 e 150.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id  = tb_categorias.id
WHERE tb_categorias.tipo = "Aves" ORDER BY tb_produtos.nome;


