
CREATE DATABASE db_ecommerce;
 
 -- Seleciona o Banco de Dados db_ecommerce
 USE db_ecommerce;
 
 
 
 CREATE TABLE produtos  (
 id  BIGINT  AUTO_INCREMENT NOT NULL, 
 nome varchar (255) NOT NULL,
 quantidade int, 
 dt_fabricacao date NULL,
 preco decimal(6, 2),
 PRIMARY KEY (id)
 );
 
 
 -- Veirificando os dados da tabela 
 select * from produtos;
 

-- Inserindo os dados da tabela produtos 
INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(1,"TV LG 50 Polegadas",1,"2019-09-23",3500.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(2,"Jogo de soquete",4,"2020-07-15",164.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(3,"Caixa de ferramenta",3,"2021-11-19",90.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(4,"Fone de ouvido Bluetooth Headphone",1,"2021-11-19",186.50);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(5,"Bicicleta ARo 29 kw alumínio",2,"2022-05-30",969.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(6,"Xiaomi Pocophone Poco SIM 128 GB blue 4 GB RAM",2,"2022-11-07",1412.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(7,"Smartwatch  Amazfit Basic Bip U Pro 1.43",6,"2022-11-07",309.00);

INSERT INTO produtos (id,nome,quantidade,dt_fabricacao,preco) values(8,"Xiaomi Mi 11T Pro Dual SIM 256 GB celestial blue 8 GB RAM",2,"2022-06-28",3495.00);


    -- Selecionar todos os produtos com valores acima de R$ 500
     select * from produtos  where preco > 500.00;
    
	-- Selecionar todos com valores menores de R$ 500
	 select * from produtos  where preco < 500.00;

