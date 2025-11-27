# Sistema de Cadastro de Pessoas  
Projeto desenvolvido para a Experiência Prática 4 da disciplina de Banco de Dados, com foco em criação e manipulação de dados utilizando SQL (MySQL).

O objetivo da atividade é construir um banco de dados funcional baseado no modelo lógico elaborado nas etapas anteriores, aplicar comandos DML
(INSERT, SELECT, UPDATE e DELETE) e organizar os scripts em um repositório GitHub.


## 📁 Estrutura do Repositório

O repositório está organizado em arquivos separados para facilitar compreensão e execução:
├── 01_create_database.sql
├── 02_create_tables.sql
├── 03_insert_data.sql
├── 04_select_queries.sql
├── 05_update_delete.sql
└── README.md


---

🗄️ Banco de Dados Utilizado
**MySQL 8.0**  
Ferramenta: **MySQL Workbench**

O banco foi criado com base no modelo lógico desenvolvido anteriormente, contendo as seguintes entidades:

- Pessoa  
- Endereco  
- Contato  

As relações seguem a integridade referencial, com chaves estrangeiras associadas a `Pessoa` e regra `ON DELETE CASCADE`.

---

📌 Scripts Incluídos

**1. Criação do Banco**
Arquivo `01_create_database.sql`  
Cria o banco `sistema_cadastro` e seleciona-o para uso.

**2. Criação das Tabelas**
Arquivo `02_create_tables.sql`  
Contém a estrutura completa das tabelas do projeto, com tipos de dados, PKs, FKs e regras de integridade.

**3. Inserção de Dados**
Arquivo `03_insert_data.sql`  
Popula as tabelas com 20 registros completos e coerentes, incluindo seus respectivos endereços e contatos.

**4. Consultas SELECT**
Arquivo `04_select_queries.sql`  
Inclui consultas variadas como:
- filtros com WHERE  
- ordenação  
- limite de registros (LIMIT)  
- consultas com JOIN entre Pessoa, Endereco e Contato  
- buscas com LIKE  

**5. Atualizações e Exclusões**
Arquivo `05_update_delete.sql`  
Possui:
- 3 comandos UPDATE
- 3 comandos DELETE  
Todos os comandos utilizam condições apropriadas para evitar alterações indevidas.


▶️ Como Executar os Scripts

1. Abra o MySQL Workbench.  
2. Execute primeiro o arquivo **01_create_database.sql**.  
3. Em seguida, execute **02_create_tables.sql** para gerar as tabelas.  
4. Rode o arquivo **03_insert_data.sql** para popular o banco.  
5. Utilize os arquivos 04 e 05 para realizar consultas e manipulações.  

Dica: execute cada arquivo separadamente para facilitar a visualização dos resultados.


🔗 Versionamento no GitHub

Este repositório contém todo o material da atividade, de forma organizada e documentada.  
A estrutura foi pensada para facilitar a navegação e permitir que qualquer pessoa replique o banco localmente.

📚 Finalidade Educacional

O projeto foi desenvolvido com foco no entendimento prático de:

- Modelagem lógica  
- Normalização  
- DML (INSERT, SELECT, UPDATE, DELETE)  
- Relacionamentos entre tabelas  
- Uso de ferramentas de banco de dados  


✔️ Status do Projeto
**Concluído**  
Todos os requisitos da Experiência Prática 4 foram atendidos.

---

🧑‍💻 Autor
Desenvolvido por **Gabriel Ferreira de Matos**, como parte das atividades da disciplina de Back-End(Modelagem de Banco de Dados).

