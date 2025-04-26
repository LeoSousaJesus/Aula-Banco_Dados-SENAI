# Usuario 1 - Aprendiz
CREATE USER 'aprendiz@localhost' IDENTIFIED BY 'senha_aprendiz';
GRANT CREATE, INSERT ON spotymusic_110.* TO 'aprendiz@localhost';
FLUSH PRIVILEGES;

# Usuario 2 - Valmir
CREATE USER 'valmir@localhost' IDENTIFIED BY 'senha_valmir';
GRANT SELECT, DELETE ON spotymusic_110.* TO 'valmir@localhost';
FLUSH PRIVILEGES;

# Usuario 3 - Chefe 
CREATE USER 'chefe@localhost' IDENTIFIED BY 'senha_chefe';
GRANT UPDATE, SELECT, DROP ON spotymusic_110.* TO 'chefe@localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR "aprendiz@localhost";
SHOW GRANTS FOR "valmir@localhost";
SHOW GRANTS FOR "chefe@localhost";

