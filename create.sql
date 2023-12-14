CREATE TABLE passageiro(
id_passageiro INT ,
nome VARCHAR(100),
RG VARCHAR(18),
sexo VARCHAR(10),
data_nascimento DATE,
endereco VARCHAR(240),
telefone VARCHAR(13),
bagagem INT(250),
numero_do_voo INT(250),
status_do_voo INT(200),
PRIMARY KEY (id_passageiro)
);

CREATE TABLE voo(
id_voo int NOT NULL AUTO_INCREMENT,
piloto_aviao VARCHAR(50),
numero VARCHAR(8),
companhia_aerea VARCHAR(50),
dias_da_semana VARCHAR(25),
modelo_aviao VARCHAR(50),
horas_voo TIME, 
PRIMARY KEY (id_voo)
);


CREATE TABLE aviao(
id_aviao INT PRIMARY KEY,
piloto_aviao VARCHAR(50),
modelo_aviao VARCHAR(50),
codigo_aviao VARCHAR(30)
);

CREATE TABLE aereporto(
id_aeroporto INT PRIMARY KEY,
nome VARCHAR(50),
cidade VARCHAR(50),
estado VARCHAR(50),
codigo_aeroporto VARCHAR(8)
);

CREATE TABLE passagem(
id_passagem INT PRIMARY KEY,
nome_passageiro VARCHAR(50),
codigo_voo VARCHAR(50),
destino VARCHAR(50),
hora_partida TIME,
hora_chegada TIME,
id_voo INT,
classe_voo VARCHAR(50),
numero_assento INT(250),
CONSTRAINT fk_voo FOREIGN KEY (id_voo) REFERENCES voo (id_voo) 
);

CREATE TABLE reserva(
id_reserva INT PRIMARY KEY,
nome_passageiro VARCHAR(100),
companhia_aerea VARCHAR(100),
data_voo DATE,
destino VARCHAR(100)
);

CREATE TABLE trecho(
id_trecho VARCHAR(15) PRIMARY KEY,
destino VARCHAR(100),
hora_partida TIME,
hora_chegada TIME
);

CREATE TABLE poltrona(
id_poltrona INT PRIMARY KEY,
nome_cliente VARCHAR(100),
telefone_cliente VARCHAR(15),
numero_assento INT(250),
cod_aeronave INT(100)
);

CREATE TABLE tarifa(
id_tarifa INT,
preco DECIMAL(5,2),
quantidade INT,
formas_pagamento INT
);
