---Sala: INF3IM / TCC Reader Kids
---Alisson dos Santos Matos N°01
---Dayani Portugal Delgado N°04
---Isadora Rodrigues dos Santos Matos N°11
---Luca Ferreira Santana N°20
---Vitória Thais Sousa de Castro N°30

USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'READER_KIDS') 
DROP DATABASE READER_KIDS  
GO
CREATE DATABASE READER_KIDS  
GO
USE READER_KIDS  
GO
CREATE TABLE Usuario  
(   
   id   INT IDENTITY,  
 
   email   VARCHAR(100)    NOT NULL,  

   senha   VARCHAR(100)    NOT NULL,  

   nivelAcesso   VARCHAR(10)    NULL, -- ADM, TEC ou USER

   foto         VARBINARY(MAX) NULL,  

   statusUsuario VARCHAR(20)    NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA  

   PRIMARY KEY (id)  

)  

/*CREATE TABLE Login  
(  
  id   INT IDENTITY NOT NULL,  

Login varchar (50) ,  

nome varchar(30),  

email varchar (50),  

senha varchar (50),

usuario_id INT NOT NULL

PRIMARY KEY (id),  

FOREIGN KEY (usuario_id) REFERENCES Usuario (id)  

)  */


CREATE TABLE plataforma (  

id INT IDENTITY PRIMARY KEY,   

histórias_nomes VARCHAR (20),  

canções_nomes VARCHAR (20),  

)  

CREATE TABLE Genero (   

    ID INT IDENTITY PRIMARY KEY, 

    DESCRICAO VARCHAR(20) NOT NULL,

    SIGLA CHAR(2) NOT NULL

)


CREATE TABLE Historias (  

id INT IDENTITY  PRIMARY KEY,  

nome VARCHAR(45) NOT NULL,  

anodelancamento DATE,  

genero_id INT  NOT NULL,  

plataforma_id INT,  

usuario_id  INT NOT NULL,  

FOREIGN KEY (usuario_id) REFERENCES Usuario (id), 

FOREIGN KEY (plataforma_id) REFERENCES plataforma (id),

FOREIGN KEY (genero_id) REFERENCES Genero (id)

)  

CREATE TABLE Cancoes(  

id INT IDENTITY  PRIMARY KEY,  

nome VARCHAR(45) NOT NULL,  

anodelancamento DATE,  

genero_id INT  NOT NULL,  

plataforma_id INT,  

usuario_id  INT NOT NULL,  

FOREIGN KEY (usuario_id) REFERENCES Usuario (id), 

FOREIGN KEY (plataforma_id) REFERENCES plataforma (id),

FOREIGN KEY (genero_id) REFERENCES Genero (id)

)  


CREATE TABLE Avaliacao( 

id INT IDENTITY  PRIMARY KEY,  

id_usuario  INT NOT NULL,  

historias_id INT  NULL,  

cancoes_id INT  NULL,  

status_aval char(1),

comentario_aval varchar(500),

 
FOREIGN KEY (id_usuario) REFERENCES Usuario (id),  

FOREIGN KEY (historias_id) REFERENCES Historias (id),  

FOREIGN KEY (cancoes_id) REFERENCES Cancoes (id)  

)  


INSERT INTO Usuario(email, senha,nivelAcesso,statusUsuario) VALUES ('alissa@gmail.com', '123456','Usuario','ATIVO')  

INSERT INTO Usuario(email, senha,nivelAcesso,statusUsuario) VALUES ('dayani@gmail.com', '12233456','Usuario','ATIVO')  

INSERT INTO Usuario(email, senha,nivelAcesso,statusUsuario) VALUES ('gatinh0@hotmail.com', '0106072731','ADM','ATIVO')  
update Usuario set senha = '123' where  email ='GATINH0@HOTMAIL.COM'

INSERT INTO Usuario(email, senha,nivelAcesso,statusUsuario) VALUES ('vitoria@hotmail.com', '909090','ADM','ATIVO')  

INSERT INTO Usuario(email, senha,nivelAcesso,statusUsuario) VALUES ('isadora@hotmail.com', '675645','ADM','ATIVO')  

 

SELECT * FROM Usuario

 
INSERT INTO Login(nome, email, senha, usuario_id) VALUES ('Alisson Santos', 'alissa@gmail.com', '123456', '1')

INSERT INTO Login(nome, email, senha, usuario_id) VALUES ('Dayani Portugal', 'dayani@gmail.com', '123456', '2')

INSERT INTO Login(nome, email, senha, usuario_id) VALUES ('Luca Ferreira', 'gatinh0@hotmail.com', '0106072731', '3')


INSERT INTO Login(nome, email, senha, usuario_id) VALUES ('Vitoria Thais', 'vitoria@hotmail.com', '123456', '4')

INSERT INTO Login(nome, email, senha, usuario_id) VALUES ('Isadora Rodrigues', 'isadora@hotmail.com', '123456', '5')
 

SELECT * FROM Login

INSERT INTO plataforma VALUES ('Dormir','Aprendizagem') 

SELECT * FROM plataforma

INSERT INTO Genero VALUES ('Texto Narrativo','TN')

INSERT INTO Genero VALUES ('Conto','CT')

INSERT INTO Genero VALUES ('Ficção','FC')

INSERT INTO Genero VALUES ('Cantigas Roda','CR')

INSERT INTO Genero VALUES ('Canções Ninar','CN')

INSERT INTO Genero VALUES ('Cantigas Infantis','MI')

SELECT * FROM Genero
 
 INSERT INTO Historias VALUES ('Chapeuzinho Vermelho', '01/03/1857', '2', '1', '1')

 INSERT INTO Historias VALUES ('Os três porquinhos', '01/02/1857', '2', '1', '2')

 INSERT INTO Historias VALUES ('A Cigarra e a Formiga', '01/03/1857', '2', '1', '3')

INSERT INTO Historias VALUES ('O Sapo não lava o pé', '01/12/2023', '3', '1', '4')

SELECT * FROM Historias

 INSERT INTO Cancoes VALUES ('O Sapo não lava o pé', '01/12/2006','4','1','5')

 INSERT INTO Cancoes VALUES ('Brilha, brilha, estrelinha', '01/04/2005','5','1','1')

 INSERT INTO Cancoes VALUES ('Dona Aranha', '01/02/2004','6','1','4')

SELECT * FROM Cancoes

INSERT INTO Avaliacao (id_usuario, historias_id, status_aval, comentario_aval)VALUES (1, 1, '4', 'Ótima história! Gostei muito do enredo.')

INSERT INTO Avaliacao (id_usuario, cancoes_id, status_aval, comentario_aval)VALUES (2, 2, '4', 'A melodia é alegre, mas a letra poderia ser mais interessante.')

INSERT INTO Avaliacao (id_usuario, historias_id, status_aval, comentario_aval)VALUES (3, 3, '1', 'A história é um pouco confusa e difícil de acompanhar.');

SELECT * FROM Avaliacao

