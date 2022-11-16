
-- criando o banco de dados 
CREATE DATABASE db_escola;

USE db_escola;
 
drop table estudantes;  

CREATE TABLE estudantes(
 id  BIGINT  AUTO_INCREMENT NOT NULL, 
 nome_completo varchar (255) NOT NULL,
 idade int NOT NULL, 
 dt_nascimento date NULL,
 turma_aluno varchar (255) NOT NULL,
 nota_aluno decimal(5,2),
 status_aluno varchar (100) NOT NULL,
 PRIMARY KEY (id)
); 



INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(1,"Felipe Carlos Jesus",16,"2006-09-23","B2",7.0,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(2,"Monica Barros da Silva",17,"2005-09-23","A3",5.5,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(3,"Lucas Souza Santos",18,"2004-04-13","D4",10.00,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(4,"Cristina Barbosa de Jesus",14,"2008-08-11","C7",6.3,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(5,"Roberto Junior Silva",15,"2007-09-18","B2",5.0,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(6,"Renata Da Silva",16,"2006-04-10","C7",6.0,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(7,"Silvana Malta Aguiar ",14,"2008-08-11","F8",9.0,"Ativo");

INSERT INTO estudantes (id, nome_completo,idade,dt_nascimento,turma_aluno,nota_aluno,status_aluno) values(8,"Fransico Silva Borge",17,"2005-06-19","B2",8.0,"Ativo");

     -- Selecionar notas dos alunos são maiores que 7.0
     select * from estudantes  where nota_aluno >= 7.0;
    
	 -- Selecionar notas dos alunos são menores que 7.0
     select * from estudantes  where nota_aluno < 7.0;

select * from estudantes;