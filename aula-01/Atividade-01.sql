	
    CREATE DATABASE db_servico_RH;
	
    -- drop database db_sevico_RH
    
    -- Seleciona o Banco de Dados db_quitanda
    USE db_servico_RH;
    
    CREATE TABLE colaboradores(
    id bigint auto_increment,
    nome_completo varchar (255) NOT NULL,
    cargo varchar (255) NOT NULL,
    idade int NOT NULL,
    setor varchar (255) NOT NULL,
    salario DECIMAL (6,2),
    PRIMARY KEY (id)
    );
    -- Veirificando os dados da tabela 
    select * from colaboradores;
    
	-- Inserindo os dados da tabela colaboradores 
    INSERT INTO colaboradores (id,nome_completo,cargo,idade,setor,salario) values(1,"Marcos Silva Cruz","Analista de sistemas",36,"Tecnologia da informação",4000.00);
    
	INSERT INTO colaboradores (id,nome_completo,cargo,idade,setor,salario) values(2,"Luiz Felipe Santos","Recepicionista",26,"Administração",1800.00);
	
    INSERT INTO colaboradores (id,nome_completo,cargo,idade,setor,salario) values(3,"Vania Silva Barros","Desenvolvedora Web Junior",25,"Tecnologia da informação",3500.00);
    
    INSERT INTO colaboradores (id,nome_completo,cargo,idade,setor,salario) values(4,"Rute Souza Mendes","Auxiliar de escritório ",26,"Administração",1600.00);
    
    -- Selecionar todos os colaboradores que recebem salário acima de R$ 2.000,00
     select * from colaboradores  where salario > 2000.00;
    
	-- Selecionar todos os colaboradores que recebem salário menor de R$ 2.000,00
	 select * from colaboradores  where salario < 2000.00;