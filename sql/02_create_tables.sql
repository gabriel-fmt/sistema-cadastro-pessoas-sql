-- ==========================================================
-- ARQUIVO 02 - Criação das Tabelas
-- Sistema de Cadastro de Pessoas
-- ==========================================================

-- Usar o banco já criado anteriormente
USE sistema_cadastro;

-- ==========================================================
-- Tabela: Pessoa
-- ==========================================================
CREATE TABLE pessoa (
    idPessoa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo CHAR(1),
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    nacionalidade VARCHAR(50)
);

-- ==========================================================
-- Tabela: Endereco
-- ==========================================================
CREATE TABLE endereco (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    idPessoa INT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10),
    complemento VARCHAR(50),
    cidade VARCHAR(50),
    estado CHAR(2),
    cep CHAR(8),

    CONSTRAINT fk_endereco_pessoa
        FOREIGN KEY (idPessoa)
        REFERENCES pessoa(idPessoa)
        ON DELETE CASCADE
);

-- ==========================================================
-- Tabela: Contato
-- ==========================================================
CREATE TABLE contato (
    idContato INT AUTO_INCREMENT PRIMARY KEY,
    idPessoa INT NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120),

    CONSTRAINT fk_contato_pessoa
        FOREIGN KEY (idPessoa)
        REFERENCES pessoa(idPessoa)
        ON DELETE CASCADE
);
