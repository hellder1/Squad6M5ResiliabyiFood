-- Table: public.tb_cripto

-- DROP TABLE IF EXISTS public.tb_cripto;

CREATE TABLE IF NOT EXISTS public.tb_cripto
(
    nome character varying(255) COLLATE pg_catalog."default",
    sigla character varying(10) COLLATE pg_catalog."default",
    data date,
    dia_semana character varying(20) COLLATE pg_catalog."default",
    max_dia numeric(18,2),
    min_dia numeric(18,2),
    valor_abertura numeric(18,2),
    valor_fechamento numeric(18,2),
    volume_negociacao numeric(18,2),
    valor_mercado numeric(18,2)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tb_cripto
    OWNER to postgres;