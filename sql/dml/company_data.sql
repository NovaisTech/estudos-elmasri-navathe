INSERT INTO DEPARTAMENTO VALUES ('Matriz', 1, '88866555576', TO_DATE('1981-06-19', 'yyyy-mm-dd'));

INSERT INTO DEPARTAMENTO VALUES ('Administracao', 4, '98765432168', TO_DATE('1995-01-01', 'YYYY-MM-DD'));

INSERT INTO DEPARTAMENTO VALUES ('Pesquisa', 5, '33344555587', TO_DATE('1988-05-22', 'YYYY-MM-DD'));

--------------------------------------------------------------------------------------
INSERT INTO FUNCIONARIO VALUES ('Joao', 'B', 'Silva','12345678966', TO_DATE('1995-01-09', 'YYYY-MM-DD'), 'Rua Reboucas 65, Curitiba', 'M', 30000, '33344555587', 5);
INSERT INTO FUNCIONARIO VALUES ('Fernando', 'T', 'Wong', '33344555587', TO_DATE('1955-12-08', 'YYYY-MM-DD'), 'Rua da Voz 632, Curitiba', 'M', 40000, '88866555576', 5);

--------------------------------------------------------------------------------------
INSERT INTO LOCALIZACAO_DEP VALUES (1, 'São Paulo');
INSERT INTO LOCALIZACAO_DEP VALUES (4, 'Maua');
INSERT INTO LOCALIZACAO_DEP VALUES (5, 'Santo Andre');
INSERT INTO LOCALIZACAO_DEP VALUES (5, 'Itu');
INSERT INTO LOCALIZACAO_DEP VALUES (5, 'São Paulo');

SELECT * FROM LOCALIZACAO_DEP;
--------------------------------------------------------------------------------------

INSERT INTO PROJETO VALUES ('ProdutoX', 1, 'Santo Andre', 5);
INSERT INTO PROJETO VALUES ('ProdutoY', 2, 'Itu', 5);

INSERT INTO PROJETO VALUES ('ProdutoZ', 3, 'São Paulo', 5);

INSERT INTO PROJETO VALUES('Informatizacao', 10, 'Maua', 4);

INSERT INTO PROJETO VALUES ('Reorganizacao', 20, 'São Paulo', 1);
INSERT INTO PROJETO VALUES ('Novosbeneficios', 30, 'Maua', 4);

SELECT * FROM PROJETO;

--------------------------------------------------------------------------------------

INSERT INTO DEPENDENTE VALUES ('33344555587', 'Alica', 'F', TO_DATE('1986-04-05', 'YYYY-MM-DD'), 'Filha');
INSERT INTO DEPENDENTE VALUES ('33344555587', 'Tiago', 'M', TO_DATE('1983-10-25', 'YYYY-MM-DD'), 'Filho');

INSERT into DEPENDENTE VALUES ('33344555587', 'Janaina', 'F', TO_DATE('1958-05-03', 'YYYY-MM-DD'), 'Esposa');


INSERT INTO DEPENDENTE VALUES ('12345678966', 'Michael', 'M', TO_DATE('1988-01-04', 'YYYY-MM-DD'), 'Filho');

INSERT INTO DEPENDENTE VALUES('12345678966', 'Alice', 'F', TO_DATE('1988-12-30', 'YYYY-MM-DD'), 'Filha');

INSERT INTO DEPENDENTE VALUES ('12345678966', 'Elizabeth', 'F', TO_DATE('1967-05-05', 'YYYY-MM-DD'), 'Esposa');



SELECT * FROM DEPENDENTE;


commit;