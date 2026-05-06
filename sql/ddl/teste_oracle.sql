SELECT user, sysdate, db_name FROM v$database;

-- Este comando mostra o usuário atual e o nome da instância (geralmente XE)
SELECT user, sysdate, instance_name FROM v$instance;

-- Este mostra a versão exata do seu Oracle
SELECT * FROM v$version;