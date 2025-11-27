-- ===============================================
-- ARQUIVO 04 - SELECT QUERIES
-- Banco de Dados: sistema_cadastro
-- ===============================================

USE sistema_cadastro;

-- ===============================================
-- 1) SELECT SIMPLES — listar todas as pessoas
-- ===============================================
SELECT * FROM pessoa;

-- ===============================================
-- 2) SELECT COM WHERE — buscar pessoas do sexo feminino
-- ===============================================
SELECT nome, sexo FROM pessoa
WHERE sexo = 'F';

-- ===============================================
-- 3) SELECT COM ORDER BY — ordenar pessoas por nome (A–Z)
-- ===============================================
SELECT idPessoa, nome, nacionalidade
FROM pessoa
ORDER BY nome ASC;

-- ===============================================
-- 4) SELECT COM LIMIT — retornar apenas os 5 primeiros registros
-- ===============================================
SELECT idPessoa, nome
FROM pessoa
LIMIT 5;

-- ===============================================
-- 5) SELECT COM JOIN — buscar pessoas e seus endereços
-- ===============================================
SELECT p.nome, e.rua, e.numero, e.cidade, e.estado
FROM pessoa p
INNER JOIN endereco e ON p.idPessoa = e.idPessoa;

-- ===============================================
-- 6) SELECT COM JOIN + WHERE — pessoas da cidade de São Paulo
-- ===============================================
SELECT p.nome, e.cidade, e.estado
FROM pessoa p
INNER JOIN endereco e ON p.idPessoa = e.idPessoa
WHERE e.cidade = 'São Paulo';

-- ===============================================
-- 7) SELECT COM FILTRO NUMÉRICO — pessoas com peso maior que 80kg
-- ===============================================
SELECT nome, peso
FROM pessoa
WHERE peso > 80;

-- ===============================================
-- 8) SELECT COM LIKE — buscar pessoas cujo nome começa com A
-- ===============================================
SELECT idPessoa, nome
FROM pessoa
WHERE nome LIKE 'A%';

-- ===============================================
-- 9) SELECT COM JOIN — buscar emails relacionados às pessoas
-- ===============================================
SELECT p.nome, c.email
FROM pessoa p
INNER JOIN contato c ON p.idPessoa = c.idPessoa;

-- ===============================================
-- 10) SELECT COM JOIN + WHERE + ORDER
-- Pessoas brasileiras, ordenadas por nome
-- ===============================================
SELECT p.nome, p.nacionalidade, c.telefone
FROM pessoa p
INNER JOIN contato c ON p.idPessoa = c.idPessoa
WHERE p.nacionalidade = 'Brasileira'
ORDER BY p.nome ASC;
