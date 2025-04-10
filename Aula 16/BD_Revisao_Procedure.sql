CREATE DATABASE BD_Revisao_Procedure;
USE BD_Revisao_Procedure;

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    Curso VARCHAR(30) NOT NULL,
    CargaHoraria VARCHAR(10) NOT NULL,
    Sala INT NOT NULL
);

CREATE TABLE Professor (
    idprofessor INT PRIMARY KEY AUTO_INCREMENT,
    NomeProfessor VARCHAR(30) NOT NULL,
    Matricula INT NOT NULL,
    especialidade VARCHAR(20) NOT NULL,
    fkid_curso INT,
    FOREIGN KEY (fkid_curso) REFERENCES curso(idCurso) ON DELETE CASCADE
);


 