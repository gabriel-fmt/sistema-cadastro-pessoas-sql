-- ===============================================
-- ARQUIVO 05 - UPDATE & DELETE
-- Banco de Dados: sistema_cadastro
-- ===============================================
use sistema_cadastro;

-- =====================================================
--                      UPDATES
-- =====================================================

-- 1) Atualizar o email de uma pessoa específica
update contato set email ='novo_email_gabriel@exemplo.com'
where idPessoa = 1;

-- 2) Corrigir o peso de uma pessoa
update pessoa set peso = 73.8 where idPessoa = 3;

-- 3) Alterar cidade e estado de um endereço
update endereco set cidade = 'Campinas', estado = 'SP'
where idPessoa = 7;

-- =====================================================
--                      DELETES
-- =====================================================

-- 1) Apagar o contato de uma pessoa específica
delete from contato where idPessoa = 15;

-- 2) Apagar o endereço de uma pessoa que se mudou
delete from endereco where idPessoa = 10;

-- 3) Apagar completamente uma pessoa e todos os seus dados relacionados
-- OBS: O ON DELETE CASCADE nas FKs remove Endereco e Contato automaticamente
delete from pessoa where idPessoa = 20;
