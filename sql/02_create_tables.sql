-- ==========================================================
-- ARQUIVO 02 - Criação do Banco e Tabelas
-- Sistema de Cadastro de Pessoas
-- ==========================================================

-- Criar o banco caso ele não exista
create database if not exists sistema_cadastro;
use sistema_cadastro;

-- ==========================================================
-- Tabela: Pessoa
-- ==========================================================
create table pessoa(
idPessoa int auto_increment primary key,
nome VARCHAR(100) not null,
dataNascimento date not null,
sexo char(1),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(50)
);

-- ===============================================
-- TABELA: Endereco
-- ===============================================
create table endereco (
idEndereço int auto_increment primary key,
idPessoa int not null,
rua varchar(100) not null,
numero varchar(10),
complemento varchar(50),
cidade varchar(50),
estado char(2),
cep char(8),
--FK
  constraints fk_endereco_pessoa
  foreign key (idPessoa)
  references pessoa(idPessoa)
  on delete cascade
  );

-- ===============================================
-- TABELA: Contato
-- ===============================================
create table contato (
idContato int auto_increment primary key,
idPessoa int not null,
tipoContato varchar(20) not null,
valor varchar(100),
descricao varchar(255),
--FK
  constraint fk_contato_pessoa
  foreign key (idPessoa)
  references pessoa(idPessoa)
  on delete cascade
);
