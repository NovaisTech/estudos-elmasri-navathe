CREATE TABLE DEPARTAMENTO (
    Dnome VARCHAR2(15) NOT NULL,
    Dnumero NUMBER(2) NOT NULL,
    Cpf_gerente CHAR(11),
    Data_inicia_gerente DATE,
    PRIMARY KEY (Dnumero),
    UNIQUE (Dnome) 
    );

SELECT * from DEPARTAMENTO;



CREATE TABLE FUNCIONARIO (
    Pnome VARCHAR2(15) NOT NULL,
    Minicial CHAR,
    Unome VARCHAR2(15) NOT NULL,
    Cpf CHAR(11) NOT NULL,
    Datanasc DATE,
    Endereco VARCHAR2(30),
    Sexo CHAR,
    Salario NUMBER(10,2),
    Cpf_supervisor CHAR(11),
    Dnr NUMBER(2) NOT NULL,
    PRIMARY KEY (cpf)
);

SELECT * FROM FUNCIONARIO;


CREATE TABLE PROJETO (
    Projnome VARCHAR2(15) NOT NULL,
    Projnumero NUMBER(4) NOT NULL,
    Projlocal VARCHAR2(15),
    Dnum NUMBER(2) NOT NULL, 
    PRIMARY KEY (Projnumero),
    UNIQUE (Projnome)
);

SELECT * FROM PROJETO;



CREATE TABLE LOCALIZACAO_DEP (
    Dnumero NUMBER(2) NOT NULL,
    Dlocal VARCHAR2(15) NOT NULL,
    PRIMARY KEY (Dnumero, Dlocal),
    CONSTRAINT fk_loc_dept FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO(Dnumero)
);

SELECT * FROM LOCALIZACAO_DEP;



CREATE TABLE DEPENDENTE (
    Fcpf CHAR(11) NOT NULL,
    Nome_dependente VARCHAR2(15) NOT NULL,
    Sexo CHAR(1),
    Datanasc DATE,
    Parentesco VARCHAR2(8),
    PRIMARY KEY (Fcpf, Nome_dependente),
    CONSTRAINT fk_dep_func FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf)

);



SELECT * FROM DEPENDENTE;