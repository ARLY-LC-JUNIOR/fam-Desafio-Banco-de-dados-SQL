-- TABLE
CREATE TABLE Aluno (    codaluno integer PRIMARY KEY AUTOINCREMENT,    nome varchar,    turma decimal);
CREATE TABLE alunoxdisciplina (

  ‘Aluno_CPF’ INT(10) NOT NULL,

  ‘Disciplina_Codigo’ INT(10) NOT NULL,

  ‘Alunoxdisciplina_Nota1’ DECIMAL(2,2) NULL DEFAULT NULL,

  ‘Alunoxdisciplina_Nota2’ DECIMAL(2,2) NULL DEFAULT NULL,

  ‘Alunoxdisciplina_Nota3’ DECIMAL(2,2) NULL DEFAULT NULL,

  ‘Alunoxdisciplina_Nota4’ DECIMAL(2,2) NULL DEFAULT NULL,

  ‘Alunoxdisciplina_DataValidade’ DATE NULL DEFAULT NULL,

  PRIMARY KEY (‘Aluno_CPF’, ‘Disciplina_Codigo’),

  CONSTRAINT ‘alunoxdisciplina_ibfk_1’

    FOREIGN KEY (‘Disciplina_Codigo’)

    REFERENCES ‘disciplina’ (‘Disciplina_Codigo’)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT ‘alunoxdisciplina_ibfk_2’

    FOREIGN KEY (‘Aluno_CPF’)

    REFERENCES ‘aluno’ (‘Aluno_CPF’)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);
CREATE TABLE AlunoXDiscXNota (    codaluno integer,    coddisciplina integer,    nota1 decimal,    nota2 decimal,    nota3 decimal);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE Disciplina (    coddisciplina integer PRIMARY KEY AUTOINCREMENT,    nomedisciplina varchar);
CREATE TABLE Professor (    codprof integer PRIMARY KEY AUTOINCREMENT,    nomeprof varchar,    formaprof varchar);
CREATE TABLE ProfXDisc (    coddisciplina integer,    codprof integer);
CREATE TABLE sqlite_sequence(name,seq);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
