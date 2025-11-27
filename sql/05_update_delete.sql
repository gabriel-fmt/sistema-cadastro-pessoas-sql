-- ===============================================
-- ARQUIVO 05 - UPDATE & DELETE
-- Banco de Dados: sistema_cadastro
-- ===============================================

USE sistema_cadastro;

-- =====================================================
--                      UPDATES
-- =====================================================

-- 1) Atualizar o email de uma pessoa específica
UPDATE contato
SET email = 'novo_email_gabriel@exemplo.com'
WHERE idPessoa = 1;

-- 2) Corrigir o peso de uma pessoa
UPDATE pessoa
SET peso = 73.8
WHERE idPessoa = 3;

-- 3) Alterar cidade e estado de um endereço
UPDATE endereco
SET cidade = 'Campinas',
    estado = 'SP'
WHERE idPessoa = 7;

-- =====================================================
--                      DELETES
-- =====================================================

-- 1) Apagar o contato de uma pessoa específica
DELETE FROM contato
WHERE idPessoa = 15;

-- 2) Apagar o endereço de uma pessoa que se mudou
DELETE FROM endereco
WHERE idPessoa = 10;

-- 3) Apagar completamente uma pessoa e seus dados relacionados
-- (ON DELETE CASCADE remove endereço e contato automaticamente)
DELETE FROM pessoa
WHERE idPessoa = 20;
