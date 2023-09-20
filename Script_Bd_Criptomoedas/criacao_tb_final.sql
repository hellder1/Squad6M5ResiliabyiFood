CREATE TABLE tb_bitcoin (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_cardano (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_cosmos (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_dogecoin (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_ethereum (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_litecoin (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_monero (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_polkadot (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_solana (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_stellar (
    SNo SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
CREATE TABLE tb_final (
    Name VARCHAR(255),
    Symbol VARCHAR(10),
    Date DATE,
    High NUMERIC,
    Low NUMERIC,
    Open NUMERIC,
    Close NUMERIC,
    Volume NUMERIC,
    Marketcap NUMERIC
);
COPY tb_bitcoin FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Bitcoin.csv' DELIMITER ',' CSV HEADER;
COPY tb_cardano FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Cardano.csv' DELIMITER ',' CSV HEADER;
COPY tb_cosmos FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Cosmos.csv' DELIMITER ',' CSV HEADER;
COPY tb_dogecoin FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Dogecoin.csv' DELIMITER ',' CSV HEADER;
COPY tb_ethereum FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Ethereum.csv' DELIMITER ',' CSV HEADER;
COPY tb_litecoin FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Litecoin.csv' DELIMITER ',' CSV HEADER;
COPY tb_monero FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Monero.csv' DELIMITER ',' CSV HEADER;
COPY tb_polkadot FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Polkadot.csv' DELIMITER ',' CSV HEADER;
COPY tb_solana FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Solana.csv' DELIMITER ',' CSV HEADER;
COPY tb_stellar FROM '/COLOQUE_O_CAMINHO_DA_PASTA_CriptoMoedas/coin_Stellar.csv' DELIMITER ',' CSV HEADER;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_bitcoin;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_cardano;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_cosmos;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_dogecoin;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_ethereum;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_litecoin;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_monero;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_polkadot;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_solana;
INSERT INTO tb_final SELECT Name,Symbol,Date,High,Low,Open,Close,Volume,Marketcap FROM tb_stellar;
