CREATE TABLE PAIS (ID_PAIS NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30));

INSERT INTO PAIS (id_pais, nome) VALUES (:v1, :v2);

SELECT * FROM PAIS;

CREATE TABLE ESTADO (ID_ESTADO NUMBER PRIMARY KEY,
                          NOME VARCHAR2(30),
                          ID_PAIS NUMBER);
                          
INSERT INTO estado (id_estado, nome, id_pais) VALUES (:v0, :v1, :v2);

SELECT * FROM ESTADO;

CREATE TABLE CIDADE (ID_CIDADE NUMBER PRIMARY KEY,
                          NOME VARCHAR(30),
                          ID_ESTADO NUMBER);
                          
CREATE TABLE BAIRRO (ID_BAIRRO NUMBER PRIMARY KEY,
                          NOME VARCHAR(30),
                          ID_CIDADE NUMBER);
                          
CREATE TABLE ENDERECO_CLIENTE (ID_EDERECO_CLIENTE NUMBER PRIMARY KEY,
                          NOME VARCHAR(30),
                          ID_BAIRRO NUMBER);

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (ID_PAIS)
REFERENCES PAIS(ID_PAIS);

SELECT 'DROP TABLE ' ||TABLE_NAME|| ' CASCADE CONSTRAINT;'
FROM user_tables;

SELECT * FROM ESTADO;

SELECT * FROM PAIS;

