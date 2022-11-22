-- Autor Silvio Julio

-- Cria o Banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o Banco de dados para uso
USE db_farmacia_bem_estar;


 
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
substancia  VARCHAR(255) NOT NULL,
forma_pagamento VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


-- Insere dados na tabela categorias
INSERT INTO tb_categorias (tipo,descricao) VALUES("Beleza"," Hidratação, Esmaltes, Maquiagem, Limpeza de Pele!");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Cosméticos","Bronzeadores, hidratantes, cicatrizantes, protetores solares, !");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Fitness","Cereais, Energéticos, Isotônicos, Shakes, Emagrecedores, Whey!");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Medicamentos","Antigripais, Asma, Diabetes, Digestivo, Hipertensão, etc;");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Saúde","Vitaminas");


-- ========================================================================================================================================

-- Insere dados na tabela produtos
INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Azzaro",358.00,"perfume masculino","cartão de crédito",2,2);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Chloé Chloe",614.87,"perfume feminino","cartão de crédito",3,1);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Cimegripe Cápsula 400mg ",8.62,"cloridratode fenilefrina 4mg","Cartão de débito",2,4);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Novalgina 500mg 20ml",22.12,"analgésico e antitérmico","dinheiro",1,4);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Caféina taurina",61.90,"Kit 2  500MG 60 CAPSULAS","cartão de crédito",2,3);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("ACEVITON ",22.00,"Vitamina C ","dinheiro",3,4);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Linea",5.89,"adoçante líquido doce natural com 25ML","Cartão de crédito",4,5);

INSERT INTO tb_produtos (nome,preco,substancia,forma_pagamento,quantidade,categorias_id) VALUES("Vick Pyena",12.74," cloridrato fenillerina 4mg + maleato","Cartão de crédito",2,5);





SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;  
-- categorias_id 
-- Relacionado duas tabelas através do id
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_pizzas.categorias_id  = tb_categorias.id; 

-- poder de ataque seja maior do que 45.
SELECT * FROM tb_produtos where preco > 50.00;

-- Produtos cujo preco do preco esteja entre 50.00 e 100.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id  = tb_categorias.id
WHERE tb_categorias.tipo = "Cosméticos" ORDER BY tb_produtos.nome;


