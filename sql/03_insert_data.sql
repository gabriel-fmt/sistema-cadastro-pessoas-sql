-- ===============================================
-- ARQUIVO 03 - INSERT DATA
-- Banco de Dados: sistema_cadastro
-- ===============================================
use sistema_cadastro;

-- ===============================================
-- POPULAR TABELA PESSOA
-- ===============================================
insert into Pessoa (nome, dataNascimento, sexo, peso, altura, nacionalidade) values
('Gabriel Ferreira', '2001-03-15', 'M', 72.5, 1.80, 'Brasileiro'),
('Michelle dos Santos Pires', '2003-12-18', 'F', 60.2, 1.65, 'Brasileira'),
('João Mendes', '1990-05-09', 'M', 82.0, 1.78, 'Brasileiro'),
('Carla Dias', '1985-02-10', 'F', 55.3, 1.60, 'Portuguesa'),
('Ricardo Lima', '1999-08-30', 'M', 91.4, 1.90', 'Argentino'),
('Juliana Alves', '2000-12-01', 'F', 58.7, 1.70, 'Brasileira'),
('Thiago Martins', '1995-07-18', 'M', 75.0, 1.76, 'Brasileiro'),
('Fernanda Rocha', '1989-03-25', 'F', 62.5, 1.68, 'Chilena'),
('Roberto Gomes', '1997-10-12', 'M', 88.1, 1.82, 'Brasileiro'),
('Patrícia Matos', '1993-01-05', 'F', 54.4, 1.58, 'Brasileira'),
('Marcos Silva', '2002-04-17', 'M', 70.0, 1.74, 'Brasileiro'),
('Vanessa Costa', '2001-07-29', 'F', 63.1, 1.72, 'Brasileira'),
('Leonardo Freitas', '1994-09-14', 'M', 85.3, 1.83, 'Brasileiro'),
('Amanda Ribeiro', '1996-06-03', 'F', 59.0, 1.66, 'Brasileira'),
('Eduardo Santoro', '1988-08-21', 'M', 92.7, 1.88, 'Italiano'),
('Beatriz Faria', '1999-02-27', 'F', 51.0, 1.59, 'Brasileira'),
('Gustavo Oliveira', '1995-12-11', 'M', 78.4, 1.79, 'Brasileiro'),
('Larissa Menezes', '1997-09-19', 'F', 65.5, 1.73, 'Brasileira'),
('Felipe Bernardes', '2000-10-01', 'M', 83.2, 1.81, 'Espanhol'),
('Camila Duarte', '1998-03-07', 'F', 57.8, 1.67, 'Brasileira');

-- ===============================================
-- POPULAR TABELA ENDERECO
-- ===============================================

insert into endereco (idPessoa, rua, numero, complemento, cidade, estado, cep) values
(1, 'Rua das Flores', '123', 'Apto 12', 'São Paulo', 'SP', '01001000'),
(2, 'Av. Brasil', '455', NULL, 'Belo Horizonte', 'MG', '30110003'),
(3, 'Rua do Comércio', '89', 'Casa', 'Salvador', 'BA', '40025000'),
(4, 'Rua Atlântica', '500', 'Bloco B', 'Rio de Janeiro', 'RJ', '22031050'),
(5, 'Rua XV de Novembro', '250', NULL, 'Curitiba', 'PR', '80020320'),
(6, 'Av. das Torres', '765', 'Torre 2', 'Manaus', 'AM', '69005070'),
(7, 'Rua Felipe Schmidt', '40', NULL, 'Florianópolis', 'SC', '88010400'),
(8, 'Trav. Padre Eutíquio', '300', NULL, 'Belém', 'PA', '66015090'),
(9, 'Av. Hermes da Fonseca', '900', 'Apto 301', 'Natal', 'RN', '59000150'),
(10, 'Esplanada', '10', NULL, 'Brasília', 'DF', '70040010'),
(11, 'Rua José Bonifácio', '120', NULL, 'Porto Velho', 'RO', '76801020'),
(12, 'Av. Litorânea', '999', 'Casa 2', 'São Luís', 'MA', '65010300'),
(13, 'QNO 12 Conjunto B', '18', NULL, 'Brasília', 'DF', '72015310'),
(14, 'Rua Sete de Setembro', '711', NULL, 'Vitória', 'ES', '29015245'),
(15, 'Av. Beira Mar', '1500', 'Apto 601', 'Aracaju', 'SE', '49010300'),
(16, 'Rua C', '22', NULL, 'Cuiabá', 'MT', '78005500'),
(17, 'Rua dos Mundurucus', '800', NULL, 'Belém', 'PA', '66080350'),
(18, 'Rua Venâncio Aires', '350', NULL, 'Santa Maria', 'RS', '97010200'),
(19, 'Av. Central', '255', 'Fundos', 'Vila Velha', 'ES', '29101020'),
(20, 'Rua Coelho Rodrigues', '420', NULL, 'Teresina', 'PI', '64010160');

-- ===============================================
-- POPULAR TABELA CONTATO
-- ===============================================
insert into contato(idPessoa, telefone, email) values
(1, '1199999-1111', 'gabriel@email.com'),
(2, '3198888-2222', 'ana@email.com'),
(3, '7197777-3333', 'joao@email.com'),
(4, '2196666-4444', 'carla@email.com'),
(5, '4195555-5555', 'ricardo@email.com'),
(6, '9294444-6666', 'juliana@email.com'),
(7, '4893333-7777', 'thiago@email.com'),
(8, '9192222-8888', 'fernanda@email.com'),
(9, '8491111-9999', 'roberto@email.com'),
(10, '6190000-1111', 'patricia@email.com'),
(11, '6998888-2222', 'marcos@email.com'),
(12, '9897777-3333', 'vanessa@email.com'),
(13, '6196666-4444', 'leonardo@email.com'),
(14, '2795555-5555', 'amanda@email.com'),
(15, '7994444-6666', 'eduardo@email.com'),
(16, '6593333-7777', 'beatriz@email.com'),
(17, '9192222-8888', 'gustavo@email.com'),
(18, '5591111-9999', 'larissa@email.com'),
(19, '2790000-1111', 'felipe@email.com'),
(20, '8698888-2222', 'camila@email.com');

