# C:/Users/Robert/Desktop/BD/proiect/script04.sql
DROP DATABASE IF EXISTS campionatEuro2024DB;

CREATE DATABASE campionatEuro2024DB;
USE campionatEuro2024DB;

CREATE TABLE IF NOT EXISTS tblGrupeCampionat (
    codGrupa    SMALLINT(3) PRIMARY KEY AUTO_INCREMENT,
    numeGrupa   VARCHAR(7)	NOT NULL UNIQUE
);

INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa A');
INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa B');
INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa C');
INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa D');
INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa E');
INSERT INTO tblGrupeCampionat (numeGrupa) VALUES ('Grupa F');


CREATE TABLE IF NOT EXISTS tblEchipe (
    codEchipa       SMALLINT(3) PRIMARY KEY AUTO_INCREMENT,
    numeNationala   VARCHAR(20) UNIQUE NOT NULL,
    grupa           SMALLINT(3),
    formaRecenta    VARCHAR(11), 
    rankFIFA        SMALLINT UNIQUE,  

    CONSTRAINT fk_grupa FOREIGN KEY (grupa)
    REFERENCES tblGrupeCampionat(codGrupa) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ( 'Germania', 1, 'V V V V V', 16);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Scotia', 1, 'V E E P V', 36);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Ungaria', 1, 'V E P V E', 27);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Elvetia', 1, 'V P P P V', 18);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Spania', 2, 'E P P E V', 8);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Croatia', 2, 'P V E E E', 10);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Italia', 2, 'P V P P V', 9);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Albania', 2, 'V E P V V', 62);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Slovenia', 3, 'E E P V V', 53);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Danemarca', 3, 'V P P P P', 19);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Serbia', 3, 'V E V P V', 34);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Anglia', 3, 'V V V V P', 3);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Polonia', 4, 'V E P P E', 31);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Tarile de Jos', 4, 'P P V E V', 6);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Austria', 4, 'P V E E V', 24);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Franta', 4, 'V V P P V', 2);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Belgia', 5, 'P P P V E', 4);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Slovacia', 5, 'V V P P V', 45);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Romania', 5, 'P V E E V', 43);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Ucraina', 5, 'E E P P V', 22);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Grecia', 6, 'V E V E P', 47);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Turcia', 6, 'V V E V P', 37);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Portugalia', 6, 'P V P P V', 7);
INSERT INTO tblEchipe (numeNationala, grupa, formaRecenta, rankFIFA) VALUES ('Cehia', 6, 'I I I E V', 39);


CREATE TABLE IF NOT EXISTS tblFotbalistiEmblematici(
    idFotbalist         SMALLINT PRIMARY KEY AUTO_INCREMENT,
    numeFotbalist       VARCHAR(30),
    prenumeFotbalist    VARCHAR(50),
    numarTricou         SMALLINT,
    echipa              SMALLINT(3),
    pozitieTeren        VARCHAR(20),
    inaltimeFotbalist   VARCHAR(12),

    CONSTRAINT fk_echipaFotbalisti FOREIGN KEY (echipa)
    REFERENCES tblEchipe(codEchipa) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('ter Stegen', 'Marc-Andre', 1, 1,'Portar','1.90');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Rudiger', 'Antonio', 2, 1,'Fundas','1.89');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Goretzka', 'Leon', 8, 1,'Mijlocas','1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Gundogan', 'Ilkay', 21, 1,'Mijlocas','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Mueller', 'Thomas', 13, 1,'Atacant','1.85');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kelly', 'Liam', 1, 2,'Portar','1.92');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Tierney', 'Kieran', 17, 2,'Fundas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('McTominay', 'Scott', 39, 2,'Mijlocas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Adams', 'Che', 10, 2,'Atacant','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Dykes', 'Lyndon', 9, 2,'Atacant','1.83');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Gulacsi', 'Peter', 1, 3,'Portar','1.89');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Lang', 'Adam', 22, 3,'Fundas','1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Szoboszlai', 'Dominik', 8, 3,'Mijlocas','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Adam', 'Martin', 9, 3,'Atacant','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Varga', 'Barnabas', 19, 3,'Atacant','1.85');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Sommer', 'Yann', 1, 4,'Portar','1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Akanji', 'Manuel', 25, 4,'Fundas','1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Shaqiri', 'Xherdan', 10, 4,'Mijlocas','1.76');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Xhaka', 'Granit', 34, 4,'Mijlocas','1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Seferovic', 'Haris', 8, 4,'Atacant','1.87');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Simon', 'Unai', 1, 5,'Portar','1.90');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Martinez', 'Inigo', 5, 5,'Fundas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Olmo', 'Dani', 7, 5,'Mijlocas','1.82');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Morata', 'Alvaro', 19, 5,'Atacant','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Torres', 'Ferran', 7, 5,'Atacant','1.83');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Gvardiol', 'Josko', 24, 6,'Fundas','1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Vida', 'Domagoj', 21, 6,'Fundas','1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Modric', 'Luka', 10, 6,'Mijlocas','1.79');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Perisic', 'Ivan', 14, 6,'Mijlocas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kramaric', 'Andrej', 27, 6,'Atacant','1.86');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Donnarumma', 'Gianluigi', 29, 7,'Portar','1.92');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Acerbi', 'Francesco', 15, 7,'Fundas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Barella', 'Nicolo', 23, 7,'Mijlocas','1.82');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Verratti', 'Marco', 7, 7,'Mijlocas','1.83');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Immobile', 'Ciro', 17, 7,'Atacant','1.87');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Strakosha', 'Thomas', 21, 8,'Portar','1.90');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Veseli', 'Frederic', 31, 8,'Fundas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Bare', 'Keidi', 8, 8,'Mijlocas','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Gjansula', 'Klaus', 23, 8,'Mijlocas','1.83');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Sadiku', 'Armando', 99, 8,'Atacant','1.84');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Oblak', 'Jan', 13, 9,'Portar','1.93');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Blazic', 'Miha', 23, 9,'Fundas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kurtic', 'Jasmin', 27, 9,'Mijlocas','1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Zahovic', 'Luka', 10, 9,'Atacant','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Sporar', 'Andraz', 9, 9,'Atacant','1.85');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Schmeichel', 'Kasper', 33, 10,'Portar','1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Christensen', 'Andreas', 15, 10,'Fundas','1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Eriksen', 'Christian', 14, 10,'Mijlocas','1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Hojlund', 'Rasmus', 11, 10,'Atacant','1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Poulsen', 'Yussuf', 9, 10,'Atacant','1.86');


INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Tadic', 'Dusan', 10, 11, 'Mijlocas', '1.81');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kostic', 'Filip', 11, 11, 'Mijlocas', '1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Mitrovic', 'Alexandr', 9, 11, 'Atacant', '1.89');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Milikovic-Savic', 'Sergej', 20, 11, 'Mijlocas', '1.92');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Zivkovic', 'Andrija', 14, 11, 'Fundas', '1.76');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kane', 'Harry', 9, 12, 'Atacant', '1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Maguire', 'Harry', 6, 12, 'Fundas', '1.94');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Bellimgahm', 'Jude', 10, 12, 'Mijlocas', '1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Stones', 'Jhon', 5, 12, 'Fundas', '1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Pickford', 'Jordan', 1, 12, 'Portar', '1.85');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Lewandowski', 'Robert', 10, 13, 'Atacant', '1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Szymanski', 'Damian ', 6, 13, 'Mijlocas', '1.81');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Szczesny', 'Wojciech ', 1, 13, 'Portar', '1.96');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kiwior', 'Jakub', 5, 13, 'Fundas', '1.89');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Bochniewicz', 'Pawel', 2, 13, 'Fundas', '1.94');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('van Dijk', 'Virgil', 4, 14, 'Fundas', '1.95');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Simons', 'Xavi', 10, 14, 'Atacant', '1.79');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Ake', 'Nathan', 5, 14, 'Fundas', '1.80');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Reijnders', 'Tijjani', 14, 14, 'Mijlocas', '1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Weghorst', 'Wout', 9, 14, 'Atacant', '1.97');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Alaba', 'David', 8, 15, 'Fundas', '1.80');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Sabitzer', 'Marcel', 9, 15, 'Mijlocas', '1.78');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Laimer', 'Konrad', 20, 15, 'Mijlocas', '1.80');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Baumgartner', 'Christoph', 19, 15, 'Mijlocas', '1.80');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Schlager', 'Alexander', 1, 15, 'Portar', '1.84');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Griezmann', 'Antoine', 7, 16, 'Atacant', '1.76');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Giroud', 'Olivier', 9, 16, 'Atacant', '1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Dembele', 'Ousmane', 10, 16, 'Mijlocas', '1.78');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Hernandez', 'Theo', 22, 16, 'Fundas', '1.78');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Maignan', 'Mike', 16, 16, 'Portar', '1,91');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Doku', 'Jeremy', 7, 17, 'Atacant', '1.73');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('De Bruyne', 'Kevin', 10, 17, 'Mijlocas', '1.81');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Lukaku', 'Romelu', 9, 17, 'Atacant', '1.91');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Vertonghen', 'Jan', 5, 17, 'Fundas', '1.93');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Carrasco', 'Yannick', 11, 17, 'Atacant', '1.81');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Dubravka', 'Martin', 1, 18, 'Portar', '1.90');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Skriniar', 'Milan', 14, 18, 'Fundas', '1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Lobotka', 'Stanislav', 22, 18, 'Mijlocas', '1.68');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Vavro', 'Denis', 3, 18, 'Fundas', '1.90');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Polievka', 'Robert', 10, 18, 'Atacant', '1.82');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Stanciu', 'Nicolae', 10, 19, 'Atacant', '1.70');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Ratiu', 'Andrei', 2, 19, 'Fundas', '1.83');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Dragusin', 'Radu', 3, 19, 'Fundas', '1.91');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Alibec', 'Denis', 7, 19, 'Atacant', '1.69');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Moldovan', 'Horatiu', 12, 19, 'Portar', '1.83' );

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Tsygankov', 'Viktor', 15, 20, 'Mijlocas', '1.78');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Mudryk', 'Mykhailo', 10, 20, 'Mijlocas', '1.75');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Yarmolenko', 'Andriy', 7, 20, 'Atacant', '1.89');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Stepanenko', 'Taras', 11, 20, 'Atacant', '1.81');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Trubin', 'Anatoliy', 12, 20, 'Portar', '1.99');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Mavropanos', 'Konstantinos', 4, 21, 'Fundas', '1,94');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Bouchalakis', 'Andreas', 5, 21, 'Mijlocas', '1.86');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Masouras', 'Georgios', 7, 21, 'Atacant', '1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Galanopoulos', 'Konstantinos', 6, 21, 'Atacant', '1.72');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Vlachodimos', 'Odysseas', 1, 21, 'Portar', '1.91');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Yuksek', 'Ismail', 16, 22, 'Mijlocas', '1.83');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Ayhan', 'Kaan', 22, 22, 'Mijlocas', '1.84');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Yildiz', 'Kenan', 19, 22, 'Atacant', '1.85');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Yazici', 'Yusuf', 11, 22, 'Atacant', '1.83');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Kabak', 'Ozan', 15, 22, 'Fundas', '1.87');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Ronaldo', 'Cristiano', 7, 23, 'Atacant', '1.87');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Leao', 'Rafael',  17, 23, 'Atacant', '1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Cancelo', 'Joao', 20, 23, 'Fundas', '1.82');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Fernandes', 'Bruno', 8, 23, 'Mijlocas', '1.79');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Palhinha', 'Joao', 6, 23, 'Mijlocas', '1.90');

INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Soucek', 'Tomas', 22, 24, 'Mijlocas', '1.92');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Zima', 'Lukas', 1, 24, 'Portar', '1.96');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Hlozek', 'Adam', 9, 24, 'Atacant', '1.88');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Chory', 'Tomas', 19, 24, 'Atacant', '2.00');
INSERT INTO tblFotbalistiEmblematici (numeFotbalist, prenumeFotbalist, numarTricou, echipa, pozitieTeren, inaltimeFotbalist) VALUES ('Masopust', 'Lukas', 12, 24, 'Mijlocas', '1.79');


CREATE TABLE IF NOT EXISTS tblAntrenori(
    idAntrenor         SMALLINT PRIMARY KEY,
    numeAntrenor       VARCHAR(30),
    prenumeAntrenor    VARCHAR(30),
    echipaAntrenata    SMALLINT(3) UNIQUE, 
    anNastere          YEAR,
    nationalitate      VARCHAR(30),

    CONSTRAINT fk_echipaAntrenori FOREIGN KEY (echipaAntrenata)
    REFERENCES tblEchipe(codEchipa) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (1, 'Dalic', 'Zlatko', 6, 1966, 'Croat');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (2, 'de la Fuente', 'Luis', 5, 1961, 'Spaniol');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (3, 'Hjulmand', 'Kasper', 10, 1972, 'Danez');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (4, 'Koeman', 'Ronald', 14, 1963, 'Olandez');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (5, 'Kek', 'Matjaz', 9, 1961, 'Sloven');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (6, 'Clarke', 'Steve', 2, 1963, 'Scotian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (7, 'Nagelsmann', 'Julian', 1, 1987, 'German');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (8, 'Probierz', 'Michal', 13, 1972, 'Polonez');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (9, 'Rossi', 'Marco', 3, 1964, 'Italian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (10, 'Southgate', 'Gareth', 12, 1970, 'Englez');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (11, 'Spalletti', 'Luciano', 7, 1959, 'Italian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (12, 'Stojkovic', 'Dragan', 11, 1965, 'Sarb');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (13, 'Sylvinho', '', 8, 1974, 'Brazilian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (14, 'Yakin', 'Murat', 4, 1974, 'Elvetian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (15, 'Calzona', 'Francesco', 18, 1968, 'Italian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (16, 'Deschamps', 'Didier', 16, 1968, 'Francez');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (17, 'Iordanescu', 'Edward', 19, 1978, 'Roman');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (18, 'Jaroslav', 'Silhavy', 24, 1969, 'Ceh');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (19, 'Martinez', 'Roberto', 23, 1973, 'Spaniol');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (20, 'Montella', 'Vincenzo', 22, 1974, 'Italian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (21, 'Poyet', 'Gustavo', 21, 1967, 'Grec');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (22, 'Rangnick', 'Ralf', 15, 1958, 'German');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (23, 'Rebrov', 'Sergiy', 20, 1974, 'Ucrainian');
INSERT INTO tblAntrenori (idAntrenor, numeAntrenor, prenumeAntrenor, echipaAntrenata, anNastere, nationalitate) VALUES (24, 'Tedesco', 'Domenico', 17, 1985, 'German');


CREATE TABLE IF NOT EXISTS tblMeciuri(
    idMeci             SMALLINT(3) PRIMARY KEY,
    echipaGazda        SMALLINT(3),
    echipaOaspete      SMALLINT(3),
    orasDesfasurare    VARCHAR(30),
    stadionDesfasurare VARCHAR(30),

    CONSTRAINT fk_echipaGazda FOREIGN KEY (echipaGazda)
    REFERENCES tblEchipe(codEchipa) ON DELETE CASCADE ON UPDATE CASCADE,

    CONSTRAINT fk_echipaOaspete FOREIGN KEY (echipaOaspete)
    REFERENCES tblEchipe(codEchipa) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (1, 1, 2, 'Munich', 'Allianz Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (2, 3, 4, 'Cologne', 'RheinEnergieStadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (3, 5, 6, 'Berlin', 'Olympiastadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (4, 7, 8, 'Dortmund', 'Signal Iduna Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (5, 9, 10, 'Stuttgart', 'MHPArena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (6, 11, 12, 'Gelsenkirchen', 'Veltins Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (7, 13, 14, 'Munich', 'Allianz Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (8, 15, 16, 'Dusseldorf', 'Merkur Spiel-Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (9, 17, 18, 'Frankfurt', 'Deutsche Bank Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (10, 19, 20, 'Munich', 'Allianz Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (11, 21, 22, 'Berlin', 'Olympiastadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (12, 23, 24, 'Leipzig', 'Red Bull Arena');

INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (13, 6, 8, 'Hamburg', 'Volksparkstadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (14, 1, 3, 'Stuttgart', 'MHPArena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (15, 2, 4, 'Cologne', 'RheinEnergieStadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (16, 9, 11, 'Munich', 'Allianz Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (17, 10, 12, 'Frankfurt', 'Deutsche Bank Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (18, 5, 7, 'Gelsenkirchen', 'Veltins Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (19, 14, 16, 'Leipzig', 'Red Bull Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (20, 13, 15, 'Dortmund', 'Signal Iduna Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (21, 17, 19, 'Cologne', 'RheinEnergieStadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (22, 18, 20, 'Berlin', 'Olympiastadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (23, 21, 24, 'Stuttgart', 'MHPArena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (24, 22, 23, 'Dortmund', 'Signal Iduna Park');

INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (25, 4, 1, 'Frankfurt', 'Deutsche Bank Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (26, 2, 3, 'Stuttgart', 'MHPArena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (27, 8, 5, 'Dusseldorf', 'Merkur Spiel-Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (28, 6, 7, 'Leipzig', 'Red Bull Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (29, 14, 15, 'Berlin', 'Olympiastadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (30, 13, 16, 'Gelsenkirchen', 'Veltins Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (31, 12, 9, 'Cologne', 'RheinEnergieStadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (32, 10, 11, 'Munich', 'Allianz Arena');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (33, 18, 19, 'Frankfurt', 'Deutsche Bank Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (34, 20, 17, 'Hamburg', 'Volksparkstadion');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (35, 24, 22, 'Dortmund', 'Signal Iduna Park');
INSERT INTO tblMeciuri (idMeci, echipaGazda, echipaOaspete, orasDesfasurare, stadionDesfasurare) VALUES (36, 23, 21, 'Dusseldorf', 'Merkur Spiel-Arena');



DESCRIBE tblGrupeCampionat;
DESCRIBE tblEchipe;
DESCRIBE tblFotbalistiEmblematici;
DESCRIBE tblAntrenori;
DESCRIBE tblMeciuri;


SELECT * FROM tblGrupeCampionat;
SELECT * FROM tblEchipe;
SELECT * FROM tblFotbalistiEmblematici;
SELECT * FROM tblAntrenori;
SELECT * FROM tblMeciuri;