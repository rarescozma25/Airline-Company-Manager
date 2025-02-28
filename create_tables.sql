--crearea tabelelor si inserarea de date din acestea

CREATE TABLE Angajat (
    id_angajat INTEGER PRIMARY KEY,
    ani_experienta INTEGER,
    varsta_angajat INTEGER,
    venit_lunar DECIMAL(10, 2),
    nume VARCHAR2(25) NOT NULL,
    prenume VARCHAR2(25) NOT NULL,
    categorie VARCHAR(20) Check (categorie in ('Pilot','Mecanic','Insotitor de Bord')),
    Constraint varsta_check Check(varsta_angajat>=18),
    Constraint venit_check Check (venit_lunar>=500)
);


CREATE TABLE Echipament (
    id_echipament INTEGER PRIMARY KEY,
    nume_echipament VARCHAR(100) NOT NULL,
    id_angajat INTEGER,
    an_achizitie INTEGER,
    pret_echipament DECIMAL(10, 2),
    FOREIGN KEY (id_angajat) REFERENCES Angajat(id_angajat),
    Constraint an_check CHECK (an_achizitie<=2025),
    Constraint pret_check Check(pret_echipament>100)
);



CREATE TABLE Ruta (
    id_ruta INTEGER PRIMARY KEY,
    durata VARCHAR(50) NOT NULL,
    data_plecare DATE NOT NULL,
    data_sosire DATE NOT NULL,
    numar_escale INTEGER,
    CONSTRAINT data_check CHECK (data_sosire>=data_plecare),
    CONSTRAINT escale_check CHECK (numar_escale>=0)
);


select * from Avion;
CREATE TABLE Avion (
    id_avion INTEGER PRIMARY KEY,
    model VARCHAR(50) NOT NULL,
    an_fabricatie INTEGER NOT NULL,
    numar_pasageri INTEGER,
    greutate_maxima DECIMAL(10,2),
    transcontinental INTEGER CHECK (transcontinental IN (0, 1)),
    Constraint pasageri_check Check (numar_pasageri>10)
);


CREATE TABLE piesaAvion (
    id_piesaAvion INTEGER PRIMARY KEY,
    nume VARCHAR(100) NOT NULL,
    pret DECIMAL(10, 2) NOT NULL,
    dimensiune VARCHAR(50)
);


CREATE TABLE Avion_piesaAvion(
    id_avion INTEGER,
    id_piesaAvion INTEGER,
    PRIMARY KEY (id_avion,id_piesaAvion),
    FOREIGN KEY (id_avion) REFERENCES Avion(id_avion),
    FOREIGN KEY (id_piesaAvion) REFERENCES piesaAvion(id_piesaAvion)
);

CREATE TABLE Zbor (
    id_zbor INTEGER PRIMARY KEY,
    oras_plecare VARCHAR(100) NOT NULL,
    oras_destinatie VARCHAR(100) NOT NULL,
    pret DECIMAL(10,2),
    numar_pasageri INTEGER,
    id_ruta INTEGER,
    id_avion INTEGER,
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id_ruta),
    FOREIGN KEY (id_avion) REFERENCES Avion(id_avion),
    Constraint pretzbor_check Check (pret>0),
    Constraint nr_pasageri_check Check (numar_pasageri>0),
    Constraint unicitate UNIQUE (oras_plecare,oras_destinatie,id_avion) --nu exista doua zboruri cu aceeasi plecare,destinatie si in care se utilizeaza acelasi avion
);

CREATE TABLE AngajatZbor (
    id_angajat INTEGER,
    id_zbor INTEGER,
    PRIMARY KEY (id_angajat, id_zbor),
    FOREIGN KEY (id_angajat) REFERENCES Angajat(id_angajat),
    FOREIGN KEY (id_zbor) REFERENCES Zbor(id_zbor)
);


CREATE TABLE Pasager (
    id_pasager INTEGER PRIMARY KEY,
    nume VARCHAR(50) NOT NULL,
    prenume VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    varsta INT,
    gen VARCHAR2(10) Check (gen in ('Masculin','Feminin','Alt gen')),
    Constraint check_varsta Check (varsta>0)   
);



CREATE TABLE Rezervare (
    id_rezervare INTEGER PRIMARY KEY,
    data_rezervarii DATE NOT NULL,
    numarPersoane INTEGER NOT NULL,
    id_zbor INTEGER,
    id_pasager INTEGER,
    FOREIGN KEY (id_zbor) REFERENCES Zbor(id_zbor),
    FOREIGN KEY (id_pasager) REFERENCES Pasager(id_pasager),
    CONSTRAINT check_rezervare_nrpers Check (numarPersoane>0)
);

CREATE TABLE Feedback (
    id_feedback INTEGER PRIMARY KEY,
    tip_feedback VARCHAR(8) CHECK (tip_feedback IN ('pozitiv', 'negativ')) NOT NULL,
    nota INTEGER CHECK (nota >= 1 AND nota <= 5),
    id_zbor INTEGER,
    id_pasager INTEGER,
    FOREIGN KEY (id_zbor) REFERENCES Zbor(id_zbor),
    FOREIGN KEY (id_pasager) REFERENCES Pasager(id_pasager)
);


CREATE TABLE Factura (
    id_factura INTEGER PRIMARY KEY,
    suma DECIMAL(10,2) NOT NULL,
    data_emiterii VARCHAR(10) NOT NULL,
    id_rezervare INTEGER,
    FOREIGN KEY (id_rezervare) REFERENCES Rezervare(id_rezervare),
    Constraint check_suma check (suma>0)
);



