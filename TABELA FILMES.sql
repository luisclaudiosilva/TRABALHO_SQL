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
  CONSTRAINT "ID_FILME_PRIMARY" PRIMARY KEY ("ID_FILME")
);