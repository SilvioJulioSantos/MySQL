-- Autor Silvio Julio

-- Cria o Banco de dados
CREATE DATABASE db_pizzaria_lega;

-- Seleciona o Banco de dados para uso
USE db_pizzaria_lega;


 
 -- Cria a tabela tb_categorias
 CREATE TABLE  tb_categorias(
id BIGINT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- Cria a tabela tb_pizzas
CREATE TABLE tb_pizzas(
id BIGINT NOT NULL AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
bebida VARCHAR(255) NOT NULL,
forma_pagamento VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);


-- Insere dados na tabela categorias
INSERT INTO tb_categorias (tipo,descricao) VALUES("Especiais","São as selecionadas que são diferenciadas!");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Clássicas1","Os melhores sabores classificação nos pedidos!");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Tradicionais","Sabores do dia a dia!");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Clássicas2","Clássicas 2 com melhores sabores");

INSERT INTO tb_categorias (tipo,descricao) VALUES("Outros","Outras opções a mais de sabores!");


-- ========================================================================================================================================

-- Insere dados na tabela pizzas
INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Margherita: queijo mozarela, tomate italiano e folhas de manjericão","Grande",60.00,"Sim, suco sabor uva","Cartão de crédito",2,1);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Mozzarella: tomate, queijo mozarela, orégano e azeitonas verdes e/ou pretas;","Média",70.00,"Sim, Refrigerante ","Dinheiro",3,4);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Calabresa: queijo mozarela, tomate, linguiça, calabresa, cebola e azeitonas verdes e/ou pretas","Média",45.00,"Sim, suco sabor uva","Cartão de crédito",2,3);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Toscana: tomate, queijo mozarela misturada com linguiça,toscana moída e azeitonas verdes","Família",100.00,"Sim, suco sabor laranja","Cartão de crédito",1,2);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Quatro queijos: tomate, queijos mozarela, gorgonzola, parmesão, provolone ou catupiry, e azeitonas verdes","Família",120.00,"Sim, Refrigerante Coca-cola","Dinheiro",2,3);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Pomodoro: tomate, queijos mozarela e parmesão ralado, alho e azeitonas","Pequena",38.90,"Sim, suco sabor uva","Cartão de crédito",3,5);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Alho: alho e azeite.","Pequena",40.00,"Sim, suco sabor acerola","Dinheiro",4,5);

INSERT INTO tb_pizzas (sabor,tamanho,preco,bebida,forma_pagamento,quantidade,categorias_id) VALUES("Portuguesa: queijo mozarela, tomate, calabresa, presunto, cebola, pimentão, ovos cozidos e azeitonas verdes","Média",130.00,"Sim, suco sabor uva","Cartão de crédito",2,1);



SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;  
-- categorias_id 
-- Relacionado duas tabelas através do id
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id  = tb_categorias.id; 

-- poder de ataque seja maior do que 45.
SELECT * FROM tb_pizzas where preco > 45.00;

-- Pizzas cujo preco do preco esteja entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id  = tb_categorias.id
WHERE tb_categorias.tipo = "Especiais" ORDER BY tb_pizzas.nome;


