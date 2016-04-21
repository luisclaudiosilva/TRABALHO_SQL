CREATE DATABASE "TRABALHO AP2";

CREATE SCHEMA "LOCADORA PASSATEMPO";

CREATE TABLE "LOCADORA PASSATEMPO"."ENDERECO"

(
  
"ID_ENDERECO" integer NOT NULL,
 
"CIDADE" character varying(30) NOT NULL,
  
"BAIRRO" character varying(30) NOT NULL,
  
"RUA" character varying(30) NOT NULL,
  
CONSTRAINT "ID_ENDERECO" PRIMARY KEY ("ID_ENDERECO")

);

INSERT INTO "LOCADORA PASSATEMPO"."ENDERECO"(
            "ID_ENDERECO", "CIDADE", "BAIRRO", "RUA")
    VALUES (1, 'FORTALEZA', 'ALDEOTA', '114');

INSERT INTO "LOCADORA PASSATEMPO"."ENDERECO"(
            "ID_ENDERECO", "CIDADE", "BAIRRO", "RUA")
    VALUES (2, 'CAUCAIA', 'ESÉRANÇA', 'RUA DAS FLORES');

INSERT INTO "LOCADORA PASSATEMPO"."ENDERECO"(
            "ID_ENDERECO", "CIDADE", "BAIRRO", "RUA")
    VALUES (3, 'MARACANAU', 'DISTRITO INDUSTRIAL', '1000');


CREATE TABLE "LOCADORA PASSATEMPO"."MIDIA"
(
  "DESCRICAO" character varying(50) NOT NULL,
  "ID" integer NOT NULL,
  CONSTRAINT "ID_PRIMARY" PRIMARY KEY ("ID")
)

INSERT INTO "LOCADORA PASSATEMPO"."MIDIA"(
            "DESCRICAO", "ID")
    VALUES ('DVD', 1);

INSERT INTO "LOCADORA PASSATEMPO"."MIDIA"(
            "DESCRICAO", "ID")
    VALUES ('VHS', 2);    

INSERT INTO "LOCADORA PASSATEMPO"."MIDIA"(
            "DESCRICAO", "ID")
    VALUES ('HD-DVD', 3);

INSERT INTO "LOCADORA PASSATEMPO"."MIDIA"(
            "DESCRICAO", "ID")
    VALUES ('BLUE-RAY', 4); 
---------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."GENERO"

(
  
"ID_GENERO" integer NOT NULL,
  
"DESCRICAO" character varying(50) NOT NULL,
  
CONSTRAINT "ID_GENERO_PRIMARYKEY" PRIMARY KEY ("ID_GENERO")

)

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (1, 'Ação');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (2, 'ANIMAÇÃO');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (3, 'AVENTURA');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (4, 'COMEDIA');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (5, 'DOCUMENTARIO');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (6, 'DRAMA');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (7, 'FICÇÃO');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (8, 'GUERRA');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (9, 'MUSICAL');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (10, 'POLICIAL');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (11, 'ROMANCE');

INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (12, 'SUSPENSE');                            
    
INSERT INTO "LOCADORA PASSATEMPO"."GENERO"(
            "ID_GENERO", "DESCRICAO")
    VALUES (13, 'TEROOR');

--------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."DEPENDENTE"

(
  
"ID_DEPEN" integer NOT NULL,
  
CONSTRAINT "ID-DEPEN PK" PRIMARY KEY ("ID_DEPEN")

);

INSERT INTO "LOCADORA PASSATEMPO"."DEPENDENTE"(
            "ID_DEPEN")
    VALUES (1);

INSERT INTO "LOCADORA PASSATEMPO"."DEPENDENTE"(
            "ID_DEPEN")
VALUES (2);

INSERT INTO "LOCADORA PASSATEMPO"."DEPENDENTE"(
            "ID_DEPEN")
VALUES (3);

INSERT INTO "LOCADORA PASSATEMPO"."DEPENDENTE"(
            "ID_DEPEN")
VALUES (4);

-------------------------------------------------


CREATE TABLE "LOCADORA PASSATEMPO"."DINHEIRO"

(
  
"ID_PAGAMENTO" integer NOT NULL,
  
"ID_DINHEIRO" integer NOT NULL,
  
CONSTRAINT "ID_DINHEIRO" PRIMARY KEY ("ID_DINHEIRO")

);

INSERT INTO "LOCADORA PASSATEMPO"."DINHEIRO"(
            "ID_PAGAMENTO", "ID_DINHEIRO")
    VALUES (1, 1);
----------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."CARTAO"

(
  
"ID_PAGAMENTO" integer NOT NULL,
  
"VALOR" double precision NOT NULL,
  
"OPERADORA" character varying(30) NOT NULL,
  
"NUMERO" integer NOT NULL,
  
"DATA_AUTORIZACAO" date NOT NULL,
  
"ID_CARTAO" integer NOT NULL,
  CONSTRAINT 
"ID_CARTAO PK" PRIMARY KEY ("ID_CARTAO")

);

INSERT INTO "LOCADORA PASSATEMPO"."CARTAO"(
            "ID_PAGAMENTO", "VALOR", "OPERADORA", "NUMERO", "DATA_AUTORIZACAO", 
            "ID_CARTAO")
    VALUES (2, 5, 'MASTER', 12345, '2014-12-05', 1);

INSERT INTO "LOCADORA PASSATEMPO"."CARTAO"(
            "ID_PAGAMENTO", "VALOR", "OPERADORA", "NUMERO", "DATA_AUTORIZACAO", 
            "ID_CARTAO")
    VALUES (2, 5, 'VISA', 23654, '2014-01-10', 2);    

INSERT INTO "LOCADORA PASSATEMPO"."CARTAO"(
            "ID_PAGAMENTO", "VALOR", "OPERADORA", "NUMERO", "DATA_AUTORIZACAO", 
            "ID_CARTAO")
    VALUES (2, 5, 'HIPER', 32165, '2014-10-07', 3);

--------------------------------------------------------

REATE TABLE "LOCADORA PASSATEMPO"."CHEQUE"

(
  
"BANCO" character varying(30),
  
"AGENCIA" character varying NOT NULL,
  
"CONTA" integer NOT NULL,
  
"NUM_CHEGUE" integer NOT NULL,
  
"ID_PAGAMENTO" integer,
  
"ID_CHEQUE" integer NOT NULL,
  
CONSTRAINT "ID_CHEQUE PK" PRIMARY KEY ("ID_CHEQUE"),
  
CONSTRAINT "ID_PAGAMENTO FK" FOREIGN KEY ("ID_PAGAMENTO")
      
REFERENCES "LOCADORA PASSATEMPO"."PAGAMENTOS" ("ID_PAGAMENTO") MATCH SIMPLE
      
ON UPDATE NO ACTION ON DELETE NO ACTION

);

INSERT INTO "LOCADORA PASSATEMPO"."CHEQUE"(
            "BANCO", "AGENCIA", "CONTA", "NUM_CHEGUE", "ID_PAGAMENTO", "ID_CHEQUE")
    VALUES ('BANCO DO BRASIL', 25361, 123, 12345678, 3, 1);

INSERT INTO "LOCADORA PASSATEMPO"."CHEQUE"(
            "BANCO", "AGENCIA", "CONTA", "NUM_CHEGUE", "ID_PAGAMENTO", "ID_CHEQUE")
    VALUES ('BANCO SANTANDER', 25361, 321, 14725836, 3, 2); 
----------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."PAGAMENTOS"

(
  
"ID_PAGAMENTO" integer NOT NULL,
  
"DESCRICAO" character varying NOT NULL,
  
CONSTRAINT "ID_PAGAMENTO_PRIMARYKEY" PRIMARY KEY ("ID_PAGAMENTO")

);

INSERT INTO "LOCADORA PASSATEMPO"."PAGAMENTOS"(
            "ID_PAGAMENTO", "DESCRICAO")
    VALUES (1, 'DINHEIRO');

INSERT INTO "LOCADORA PASSATEMPO"."PAGAMENTOS"(
            "ID_PAGAMENTO", "DESCRICAO")
    VALUES (2, 'CARTAO');

INSERT INTO "LOCADORA PASSATEMPO"."PAGAMENTOS"(
            "ID_PAGAMENTO", "DESCRICAO")
    VALUES (3, 'CHEQUE');
--------------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."DISTRIBUIDORA"

(
  
"ID_DIST" integer NOT NULL,
  
"ID_ENDERECO" integer,
  
"RAZAO SOCIAL" character varying(50),
  
"TELEFONE" integer,
  
"PESSOA" character varying,
  
"CNPJ" character varying(30),
  
CONSTRAINT "ID_DIST_PRIMARY" PRIMARY KEY ("ID_DIST"),
  
CONSTRAINT "ID_ENDERECO_FK" FOREIGN KEY ("ID_ENDERECO")
      
REFERENCES "LOCADORA PASSATEMPO"."ENDERECO" ("ID_ENDERECO") MATCH SIMPLE
      
ON UPDATE NO ACTION ON DELETE NO ACTION

);

INSERT INTO "LOCADORA PASSATEMPO"."DISTRIBUIDORA"(
            "ID_DIST", "ID_ENDERECO", "RAZAO SOCIAL", "TELEFONE", "PESSOA", 
            "CNPJ")
    VALUES (1, 1, 'FILMES LTDA', 32123654, 'LUCIA LIMA', '824.288.574-52');

INSERT INTO "LOCADORA PASSATEMPO"."DISTRIBUIDORA"(
            "ID_DIST", "ID_ENDERECO", "RAZAO SOCIAL", "TELEFONE", "PESSOA", 
            "CNPJ")
    VALUES (2, 3, 'MAX DVD LTDA', 33214463, 'RODRIGO PAIVA', '667.874.913-87'); 

-------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."PRAZO"

(
  
"ID_PRAZO" integer NOT NULL,
  
"DESCRISAO" character varying(30),
  
CONSTRAINT "ID_PRAZO PK" PRIMARY KEY ("ID_PRAZO")

);

INSERT INTO "LOCADORA PASSATEMPO"."PRAZO"(
            "ID_PRAZO", "DESCRISAO")
    VALUES (1, '3 DIAS');

    INSERT INTO "LOCADORA PASSATEMPO"."PRAZO"(
            "ID_PRAZO", "DESCRISAO")
    VALUES (2, '1 DIA');
--------------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."TITULAR"

(
  
"ID_TITULAR" integer NOT NULL,
  
"ID_DEPENDENTE" integer NOT NULL,
  
"ID_ENDERECO" integer NOT NULL,
  
"TEL_RESED" integer NOT NULL,
  
"LOCAL_TRAB" character varying(50) NOT NULL,
  
"TEL_COMER" integer NOT NULL,
  
"TEL_CEL" integer NOT NULL,
  
"CPF" integer NOT NULL,
  
"IDADE" integer NOT NULL,
  
CONSTRAINT "ID_TITULAR PK" PRIMARY KEY ("ID_TITULAR"),
  
CONSTRAINT "ID_DEPENDENTE FK" FOREIGN KEY ("ID_DEPENDENTE")
      
REFERENCES "LOCADORA PASSATEMPO"."DEPENDENTE" ("ID_DEPEN") MATCH SIMPLE
      
ON UPDATE NO ACTION ON DELETE NO ACTION,
  
CONSTRAINT "ID_ENDERECO FK" FOREIGN KEY ("ID_ENDERECO")
      
REFERENCES "LOCADORA PASSATEMPO"."ENDERECO" ("ID_ENDERECO") MATCH SIMPLE
      
ON UPDATE NO ACTION ON DELETE NO ACTION

);

INSERT INTO "LOCADORA PASSATEMPO"."TITULAR"(
            "ID_TITULAR", "ID_DEPENDENTE", "ID_ENDERECO", "TEL_RESED", "LOCAL_TRAB", 
            "TEL_COMER", "TEL_CEL", "CPF", "IDADE")
    VALUES (1, 1, 1, 32123645, 'FORTALEZA', 32124565, 91502365, 12345678, 25);

    INSERT INTO "LOCADORA PASSATEMPO"."TITULAR"(
            "ID_TITULAR", "ID_DEPENDENTE", "ID_ENDERECO", "TEL_RESED", "LOCAL_TRAB", 
            "TEL_COMER", "TEL_CEL", "CPF", "IDADE")
    VALUES (2, 2, 2, 32122323, 'FORTALEZA', 32121423, 92214152, 36251474, 26);
-------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."CLIENTE"

(
  
"ID_CLIENTE" integer NOT NULL,
  
"ID_TITULAR" integer NOT NULL,
  
"NOME_CLIENTE" character varying(50) NOT NULL,
  
"SEXO" character(1),
  
"DATA_NASCIMENTO" date,
  
"EMAIL" character varying(100) NOT NULL,
  
CONSTRAINT "ID_CLIENTE PK" PRIMARY KEY ("ID_CLIENTE")

);

INSERT INTO "LOCADORA PASSATEMPO"."CLIENTE"(
            "ID_CLIENTE", "ID_TITULAR", "NOME_CLIENTE", "SEXO", "DATA_NASCIMENTO", 
            "EMAIL")
    VALUES (1, 1, 'LUIS CLAUDIO', 'M', '1988-02-01', 'luis@gmail.com');

    INSERT INTO "LOCADORA PASSATEMPO"."CLIENTE"(
            "ID_CLIENTE", "ID_TITULAR", "NOME_CLIENTE", "SEXO", "DATA_NASCIMENTO", 
            "EMAIL")
    VALUES (2, 2, 'Keith Narjara', 'F', '1996-11-30', 'keith@gmail.com');
------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."FILME"

(
  
"ID_FILME" integer NOT NULL,
  
"ID_GENERO" integer,
  
"TITULO ORIGINAL" character varying,
  
"TITULO EM PORTUGUES" character varying,
  
"PAISES" character varying(100),
  
"ANO" integer,
  
"DIRECAO" character varying(100) NOT NULL,
  
"ELENCO" character varying(1000) NOT NULL,
  
"SINOPSE" character varying(1000) NOT NULL,
  
"DURACAO" integer NOT NULL,
  
"ATOR" character varying(100) NOT NULL,
  
"NACIONALIDADE" character varying(100),
  
CONSTRAINT "ID_FILME_PRIMARY" PRIMARY KEY ("ID_FILME"),
  
CONSTRAINT "ID_GENERO FK" FOREIGN KEY ("ID_GENERO")
      
REFERENCES "LOCADORA PASSATEMPO"."GENERO" ("ID_GENERO") MATCH SIMPLE
      
ON UPDATE NO ACTION ON DELETE NO ACTION

);

INSERT INTO "LOCADORA PASSATEMPO"."FILME"(
            "ID_FILME", "ID_GENERO", "TITULO ORIGINAL", "TITULO EM PORTUGUES", 
            "PAISES", "ANO", "DIRECAO", "ELENCO", "SINOPSE", "DURACAO", "ATOR", 
            "NACIONALIDADE")
    VALUES (1, 1, 'Police Story', 'EM NOME DA LEI', 'CHINA/HONG KONG', 2013, 'Sheng Ding', 
    'Jackie Chan-Zhong Wen-Aaron Aziz-Alexandre Bailly 
    -Lutador-Andreas Nguyen-Lutador-Guli Nazha-Xiao Wei', 
    'Quase 30 anos depois do primeiro filme da franquia Police Story, 
    Jackie Chan está de volta a ação! 
    Diferente dos outros filme do segmento, 
    esse Police Story carrega um tom bem mais “Dark” e sério do que os anteriores.', 
    108, 'Jackie Chan', 'CHINA');

    INSERT INTO "LOCADORA PASSATEMPO"."FILME"(
            "ID_FILME", "ID_GENERO", "TITULO ORIGINAL", "TITULO EM PORTUGUES", 
            "PAISES", "ANO", "DIRECAO", "ELENCO", "SINOPSE", "DURACAO", "ATOR", 
            "NACIONALIDADE")
    VALUES (2, 2, 'Finding Nemo', 'PROCURANDO NEMO', 'EUA', 2012, 
    'Andrew Stanton, Lee Unkrich', 
    'Albert Brooks, Ellen DeGeneres, Alexander Gould',
    'O passado reserva tristes memórias para Marlin nos recifes de coral, onde perdeu sua esposa e toda a ninhada. Agora, ele cria seu único filho Nemo com todo o cuidado do mundo, mas o pequeno e simpático peixe-palhaço acaba exagerando durante uma simples discussão e acaba sendo capturado por um mergulhador. Agora, o pai super protetor precisa entrar em ação e parte numa busca incansável pelo mar aberto, na esperança de encontrar seu amado filhote. No meio do caminho, ele acaba conhecendo Dory e, juntos, a dupla vai viver uma incrível aventura. Enquanto isso, Nemo também vive uma intensa experiência ao lado de seus novos amigos habitantes de um aquário, pois eles precisam ajudá-lo a escapar do destino que lhe foi reservado: ir parar nas mãos da terrível Darla, sobrinha do dentista que o capturou. ',
    100, 'Albert Brooks', 'EUA');
----------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."PESQUISA"

(
  
"ID_GENERO" integer NOT NULL,
  
"ID_MIDIA" integer NOT NULL,
  
"ID_FILME" integer NOT NULL,
  
"ID_PESQUISA" integer NOT NULL,
  
CONSTRAINT "ID_PESQUISA PK" PRIMARY KEY ("ID_PESQUISA")

);

INSERT INTO "LOCADORA PASSATEMPO"."PESQUISA"(
            "ID_GENERO", "ID_MIDIA", "ID_FILME", "ID_PESQUISA")
    VALUES (1, 1, 1, 1);

INSERT INTO "LOCADORA PASSATEMPO"."PESQUISA"(
            "ID_GENERO", "ID_MIDIA", "ID_FILME", "ID_PESQUISA")
    VALUES (2, 2, 2, 2);
----------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."ITEM"

(
  
"ID_ITEM" integer NOT NULL,
  
"ID_MIDIA" integer NOT NULL,
  
"ID_FILME" integer NOT NULL,
  
"DATA_AQUISICAO" date NOT NULL,
  
CONSTRAINT "ID_ITEM PK" PRIMARY KEY ("ID_ITEM")

);

INSERT INTO "LOCADORA PASSATEMPO"."ITEM"(
            "ID_ITEM", "ID_MIDIA", "ID_FILME", "DATA_AQUISICAO")
    VALUES (1, 1, 1, '2014-10-02');

INSERT INTO "LOCADORA PASSATEMPO"."ITEM"(
            "ID_ITEM", "ID_MIDIA", "ID_FILME", "DATA_AQUISICAO")
    VALUES (2, 2, 2, '2014-10-02');
------------------------------------------------

CREATE TABLE "LOCADORA PASSATEMPO"."RESERVA"

(
  
"ID_CLIENTE" integer NOT NULL,
  
"ID_ITEM" integer NOT NULL,
  
"ID_RESERVA" integer NOT NULL,
  
"DATA_TIME" date,
  
CONSTRAINT "ID_RESERVA PK" PRIMARY KEY ("ID_RESERVA")

);

INSERT INTO "LOCADORA PASSATEMPO"."RESERVA"(
            "DATA_HORA", "ID_CLIENTE", "ID_ITEM", "ID_RESERVA")
    VALUES ('2014-02-12', 1, 1, 1);

    INSERT INTO "LOCADORA PASSATEMPO"."RESERVA"(
            "DATA_HORA", "ID_CLIENTE", "ID_ITEM", "ID_RESERVA")
    VALUES ('2014-02-13', 2, 2, 2);
----------------------------------------------








