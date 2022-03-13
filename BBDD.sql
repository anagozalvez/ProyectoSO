DROP DATABASE IF EXISTS Campeonato;
CREATE DATABASE Campeonato;
USE Campeonato;
CREATE TABLE Jugadores (
  Id INTEGER PRIMARY KEY NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Usuario VARCHAR(50) NOT NULL,
  Contraseña VARCHAR(40) NOT NULL
 
)ENGINE = InnoDB;

CREATE TABLE Partidas (
 Id INTEGER PRIMARY KEY NOT NULL,
 Ganador INTEGER NOT NULL,
 FechaInicio DATETIME NOT NULL,
 FechaFinal DATETIME NOT NULL,
 Duracion TIME GENERATED ALWAYS AS (TIMEDIFF(FechaFinal, FechaInicio))
)ENGINE = InnoDB;

CREATE TABLE Participacion (
 IdP INTEGER NOT NULL,
 IdJ INTEGER NOT NULL,
 Posicion INTEGER NOT NULL,
 FOREIGN KEY (IdP) REFERENCES Partidas(Id),
 FOREIGN KEY (IdJ) REFERENCES Jugadores(Id)
 
 
)ENGINE = InnoDB;


INSERT INTO Jugadores VALUES(1,'Juan', 'Juan01', SHA1('Juanito'));
INSERT INTO Jugadores VALUES(2,'Maria', 'Maria01', SHA1('Maria123'));
INSERT INTO Jugadores VALUES(3,'Pedro', 'Pedro01', SHA1('Pedro123'));
INSERT INTO Jugadores VALUES(4,'Luis', 'Luis01', SHA1('Luismi'));
INSERT INTO Jugadores VALUES(5,'Julia', 'Julia01', SHA1('Julia123'));

INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(1,1,'2022-01-14 10:00:09','2022-01-14 10:30:00');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(2,3,'2021-12-12 23:32:45','2021-12-13 00:13:01');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(3,5,'2021-12-06 15:47:31','2021-12-06 16:10:31');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(4,2,'2022-02-07 21:21:21','2022-02-07 21:35:42');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(5,4,'2022-03-09 22:22:22','2022-03-09 22:59:03');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(6,1,'2022-03-09 03:18:05','2022-03-09 03:18:06');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(7,2,'2022-02-19 17:07:06','2022-02-19 17:37:06');
INSERT INTO Partidas(Id, Ganador, FechaInicio, FechaFinal) VALUES(8,5,'2022-01-25 08:19:59','2022-01-25 09:00:00');

INSERT INTO Participacion VALUES(1,2,1);
INSERT INTO Participacion VALUES(2,4,2);
INSERT INTO Participacion VALUES(3,1,1);
INSERT INTO Participacion VALUES(4,1,3);
INSERT INTO Participacion VALUES(5,3,2);
INSERT INTO Participacion VALUES(6,3,3);
INSERT INTO Participacion VALUES(7,4,4);
INSERT INTO Participacion VALUES(8,1,1);
