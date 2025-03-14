/* 1- Professor e especialidade */
select nome, especialidade
from professor;

/* Curso e carga horária*/
select curso, cargahoraria
from curso;

/* professor e curso*/
select p.nome, c.curso
from professor p
inner join curso c
on p.idProfessor = c.fk_idProfessor;

/* nome do professor, especialidade, curso, turno */