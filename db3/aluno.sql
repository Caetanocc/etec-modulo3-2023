
CREATE TABLE `etec`.`aluno` ( idaluno INT  NOT NULL AUTO_INCREMENT , rm int, `nome` VARCHAR(70) NOT NULL,
                              `dtnas` DATE NOT NULL, genero char(1), cep varchar(10), PRIMARY KEY (`idaluno`)) ENGINE = InnoDB;

insert into aluno values (null, 22816, 'ALEX DOS SANTOS MENDES          ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 19181, 'ANTONIO LUCAS VIEIRA OLIVEIRA   ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22777, 'CAIO MARINS                     ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22799, 'CARLEANDRO GOMES SILVA          ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22760, 'CARLOS DANIEL DA SILVA RODRIGUES', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22772, 'DANIEL YUJI SENARA              ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22821, 'DENISE FELIX DE ALMEIDA         ', '2000-01-02', 'F', '02522-050');
insert into aluno values (null, 22715, 'ERICK MASSAHIRO KONNO           ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22721, 'FABIANA BONIFACIO DOS SANTOS    ', '2000-01-02', 'F', '02522-050');
insert into aluno values (null, 22720, 'FELIPE MOMESSO DE BARROS LOPES  ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 11475, 'FELIPE PESSOA MANICARDI         ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22714, 'FERNANDO FERREIRA BONIFACIO     ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22718, 'GUILHERME PENA SALES            ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 11330, 'JOAO PAULO CANO CARLOS          ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22858, 'JUAN JOSE MANCILLA CALLEJAS     ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22713, 'LEONARDO OLIVEIRA GOMES DA SILVA', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 16260, 'LUCAS MAZZA E COSTA             ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 20516, 'MATHEUS LEITE DE SOUZA          ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22785, 'RAPHAEL DA SILVA LIMA           ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 11347, 'RODRIGO DE MORAES LAGROTTERIA   ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 22716, 'SANDY WARA MAMANI CONDORI       ', '2000-01-02', 'F', '02522-050');
insert into aluno values (null, 22782, 'THALIB NUREDIN ZUBAIDAH DE PAULA', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 90001, 'TESTE ALUNO 1                   ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 90002, 'TESTE ALUNO 2                   ', '2000-01-02', 'M', '02522-050');
insert into aluno values (null, 90003, 'TESTE ALUNO 3                   ', '2000-01-02', 'M', '02522-050');


SELECT nome , TIMESTAMPDIFF(YEAR, dtnas, CURDATE()) as idade FROM `aluno`
