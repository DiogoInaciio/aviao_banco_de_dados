INSERT INTO passageiro (id_passageiro, nome, rg, sexo, data_nascimento, endereco, telefone, bagagem, numero_do_voo)
#VALUES("001","Fabiano Silva","568564123","M","1998/05/23","Rua silva costa 200", "1197756842","15", "100")
#VALUES("002","Maria Vitoria", "546588546","F","2001/08/14","Rua Ferreira 30", "11985765745","147","100")
#VALUES("003","Fernanda Souza","654456324","f","1995/03/15","Rua climaco barbosa 50","11988574541","20","100")
#VALUES("004","Zak Ferreira","654587853","M","1998/05/04","Rua barbosa 85","11988771547","86","100")
#VALUES("005", "Sarah Pereira","854963547","F","1996/09/26","Rua São José 125","11977544369","250","100")

INSERT INTO voo (id_voo, piloto_aviao, numero, companhia_aerea, dias_da_semana, modelo_aviao, horas_voo)
#VALUES("006", "Arnaldo Júnior","01","Azul Brazilian Airlines","quinta", "Boeing 737", "19:00:00")
#VALUES("007", "Fabiano Silva","02","Azul Brazilian Airlines","quinta", "Boeing 737", "19:00:00")
#VALUES("003", "Marcelo Souza","03","Azul Brazilian Airlines","quinta", 'Boeing 737', '19:00:00');
#VALUES("009", "Alissom Silva","04","Azul Brazilian Airlines","quinta", 'Boeing 737', '19:00');
#VALUES("010", "Diogo Inácio","05","Azul Brazilian Airlines","quinta", 'Boeing 737', '19:00');

INSERT INTO aviao (id_aviao, piloto_aviao, modelo_aviao, codigo_aviao)
#VALUES(011,"Arnaldo Júnior", "Boeing 737", "001")
#VALUES(012,"Fabiano Silva", "Boeing 737", "002")
#VALUES(013,"Marcelo Souza", "Boeing 737", "003" )
#VALUES(014, "Alissom Silva", "Boeing 737", "004" )
#VALUES(015,"Diogo Inácio", "Boeing 737", "005" )

INSERT INTO aereporto (id_aeroporto, nome, cidade, estado, codigo_aeroporto)
VALUES(100, "Aeroporto Internacional de Guarulhos","São Paulo","SP", "002")

INSERT INTO passagem (id_passagem, nome_passageiro, codigo_voo, destino, hora_partida, hora_chegada, id_voo, classe_voo, numero_assento)
#VALUES(016, "Fabiano Silva","001", "Estados Unidos", "18:00", "10:00", "006", "ecônomico", "10");
#VALUES(017, "Maria Vitoria", "001","Estados Unidos", "18:00", "10:00", "007", "ecônomico", "05");
#VALUES(018, "Fernanda Souza", "001","Estados Unidos", "18:00", "10:00", "008", "primeira classe", "07");
#VALUES(019, "Zak Ferreira", "001","Estados Unidos", "18:00", "10:00", "009", "ecônomico premiuim", "09");
#VALUES(020, "Sarah Pereira", "001","Estados Unidos", "18:00", "10:00", "010","ecônomico premium", "12");

INSERT INTO reserva (id_reserva, nome_passageiro, companhia_aerea, data_voo, destino)
#VALUES(021, "Fabiano Silva", "LATAM Airlines Group SA",'2024/01/06', "Estados Unidos")
#VALUES(022, "Maria Vitoria","LATAM Airlines Group SA","2024/01/06", "Estados Unidos")
#VALUES(023, "Fernanda Souza"," LATAM Airlines Group SA","2024/01/06", "Estados Unidos")
#VALUES(024, "Zak Ferreira","LATAM Airlines Group SA","2024/01/06", "Estados Unidos")
#VALUES(025, "Sarah Pereira", "LATAM Airlines Group SA","2024/01/06", "Estados Unidos")

INSERT INTO tarifa (id_tarifa, preco, quantidade, formas_pagamento)
VALUES(026, '2500.00', 1, "Cartão de credito")

INSERT INTO trecho (id_trecho, destino, hora_partida, hora_chegada)
VALUES(027, "Estados Unidos", '18:00:00', '10:00:00')

INSERT INTO poltrona (id_poltrona, nome_passageiro, telefone_passageiro, numero_assento, cod_aeronave)
#VALUES(028, "Fabiano Silva", "1197756842", "10", "007")
#VALUES(029, "Maria Vitoria", "11985765745", "05", "007")
#VALUES(030, "Fernanda Souza", "11988574541", "07", "007")
#VALUES(031, "Zak Ferreira", "11988771547", "09", "007")
VALUES(032, "Sarah Pereira", "1977544369", "12", "007")

CREATE OR REPLACE VIEW Classe_TEST AS
SELECT
   passagem.id_passagem,
   passagem.classe_voo,
   (CASE
      WHEN passagem.classe_voo = 'Primeira Classe' THEN 'A'
      WHEN passagem.classe_voo = 'ecônomico' THEN 'B'
      WHEN passagem.classe_voo = 'ecônomico premium ' THEN 'C'
      ELSE 'Classe_voo'
   END) AS Classe_Test
    FROM passagem;
    
    
