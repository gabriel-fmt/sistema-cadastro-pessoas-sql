-- ===============================================
-- ARQUIVO 04 - SELECT QUERIES
-- Banco de Dados: sistema_cadastro
-- ===============================================
use sistema_cadastro;

-- ===============================================
-- 1) SELECT SIMPLES — listar todas as pessoas
-- ===============================================
select*from pessoa;

-- ===============================================
-- 2) SELECT COM WHERE — buscar pessoas do sexo feminino
-- ===============================================
select nome, sexo from pessoa where sexo = 'F';

-- ===============================================
-- 3) SELECT COM ORDER BY — ordenar pessoas por nome (A–Z)
-- ===============================================
select idPessoa, nome, nacionalidade from pessoa order by nome asc;

-- ===============================================
-- 4) SELECT COM LIMIT — retornar apenas os 5 primeiros registros
-- ===============================================
select idPessoa, nome from pessoa limit 5;

-- ===============================================
-- 5) SELECT COM JOIN — buscar pessoas e seus endereços
-- ===============================================
select pessoa.nome, endereco.rua, endereco.numero,
       endereco.cidade, endereco.estado from pessoa
       inner join endereco on pessoa.idPessoa =
       endereco.idPessoa;

-- ===============================================
-- 6) SELECT COM JOIN + WHERE — buscar pessoas da cidade de São Paulo
-- ===============================================
select pessoa.nome, endereco.cidade, endereco.estado
       from pessoa inner join endereco on pessoa.idPessoa
       where endereco.cidade = 'São Paulo';

-- ===============================================
-- 7) SELECT COM FILTRO NUMÉRICO — pessoas com peso maior que 80kg
-- ===============================================
select nome, peso from pessoa where peso > 80;

-- ===============================================
-- 8) SELECT COM LIKE — buscar pessoas cujo nome começa com A
-- ===============================================
select idPessoa, nome from pessoa where nome like 'A%';

-- ===============================================
-- 9) SELECT COM JOIN — buscar emails relacionados às pessoas
-- ===============================================
select pessoa.nome, contato.email from pessoa inner join
       contato on pessoa.idPessoa = contato.idPessoa;

-- ===============================================
-- 10) SELECT COM JOIN + WHERE + ORDER — exemplo completo
-- Pessoas brasileiras, ordenadas por nome
-- ===============================================
select pessoa.nome, pessoa.nacionalidade, contato.telefone
       from pessoa inner join contato on pessoa.idPessoa =
       contato.idPessoa where pessoa.nacionalidade = 'Brasileira'
       order by pessoa.nome asc;
