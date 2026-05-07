
# Projeto Banco de Dados: Esquema "Company" (Elmasri & Navathe)

Este repositório contém a implementação prática do banco de dados relacional **"Company"**, baseada nos exemplos clássicos do livro *"Sistemas de Banco de Dados"* de Ramez Elmasri e Shamkant Navathe.

O projeto foi desenvolvido como parte dos estudos para o curso de **Engenharia de Computação** na **Univesp**.

## 🛠️ Tecnologias e Ferramentas

* **Banco de Dados:** Oracle Database 21c Express Edition (XE).
* **IDE:** Visual Studio Code.
* **Extensão:** Database Client (gerenciamento de conexões e execução SQL).
* **Linguagem:** SQL (DDL e DML).

## 📂 Estrutura do Repositório

O projeto está organizado para seguir as melhores práticas de versionamento:

* `/sql/ddl/`: Scripts de definição de dados (Criação de tabelas e constraints).
* `/sql/dml/`: Scripts de manipulação de dados (Inserts de exemplo do livro).
* `/modelo-relacional/`: Documentação e diagramas do esquema.

## 🚀 Como Executar

### 1. Configuração do Ambiente
Para rodar este projeto, é necessário ter o Oracle 21c instalado.
Recomenda-se a criação de um utilizador (Schema) específico para evitar poluição com tabelas de sistema:

```sql
ALTER SESSION SET "_ORACLE_SCRIPT" = true;
CREATE USER ELMASRI IDENTIFIED BY sua_senha;
GRANT CONNECT, RESOURCE TO ELMASRI;
ALTER USER ELMASRI QUOTA UNLIMITED ON USERS;
```

### 2. Criação das Tabelas (DDL)
Os scripts devem ser executados na ordem abaixo para garantir a integridade referencial (chaves estrangeiras):
1.  `DEPARTAMENTO`
2.  `FUNCIONARIO`
3.  `PROJETO`
4.  `LOCALIZACAO_DEP`
5.  `DEPENDENTE`

### 3. Inserção de Dados (DML)
Após a criação da estrutura, utilize os scripts em `/sql/dml/` para popular as tabelas com os dados de teste fornecidos no livro.

## 📊 Conceitos de Engenharia de Dados Aplicados

Este projeto implementa conceitos fundamentais de modelagem relacional:
* **Integridade Referencial:** Uso rigoroso de Chaves Primárias (PK) e Estrangeiras (FK).
* **Entidades Fracas:** Implementação da tabela `DEPENDENTE` vinculada ao funcionário.
* **Auto-relacionamento:** Representação da hierarquia de supervisão (`supervisor_cpf`) na tabela `FUNCIONARIO`.
* **Chaves Compostas:** Utilizadas em `LOCALIZACAO_DEP` e `DEPENDENTE`.

---
**Desenvolvido por:** Renato Novais  
**Instituição:** Univesp (Engenharia de Computação)
