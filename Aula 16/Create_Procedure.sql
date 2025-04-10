delimiter $$
CREATE PROCEDURE  P_INSERIRCURSO(IN C VARCHAR(30), IN CH VARCHAR(10), IN S  INT)
BEGIN 
	INSERT INTO CURSO VALUES(NULL, C, CH, S);
END $$
delimiter ;

call P_INSERIRCURSO("Estatística", "200 Horas", 21);

delimiter $$
CREATE PROCEDURE  P_InsertProf(in NP VARCHAR(30),in M INT,in E VARCHAR(20), in FKC int)
BEGIN 
	INSERT INTO professor VALUES(NULL, NP, M, E, FKC);
END $$
delimiter ;

call P_InsertProf("Jorge", 10, "Banco de Dados", 1);


call P_INSERIRCURSO("Java basico", "200 Horas", 7);
call P_INSERIRCURSO("Mecatrônica", "300 Horas", 19);

call P_InsertProf("Leandro", 001, "Javascript", 2);

select * from curso;
SELECT * FROM professor;
