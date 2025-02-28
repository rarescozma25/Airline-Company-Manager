INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (100, 8, 35, 5000.23, 'Popescu', 'Ion', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (101, 5, 27, 3000.45, 'Ionescu', 'Ana', 'Insotitor de Bord');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (102, 12, 42, 4500.00, 'Dragomir', 'Mihai', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (103, 15, 50, 6000.13, 'Neagu', 'Maria', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (104, 3, 24, 2800.12, 'Stanciu', 'Elena', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (105, 10, 38, 4200.99, 'Gheorghiu', 'Andrei', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (106, 20, 55, 7000.01, 'Dumitrescu', 'Cristina', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (107, 7, 30, 3200.99, 'Constantin', 'Alexandru', 'Insotitor de Bord');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (108, 8, 36, 4300.00, 'Florea', 'Mihaela', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (109, 18, 47, 6500.23, 'Munteanu', 'Raluca', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (110, 5, 29, 3100.50, 'Popa', 'Cristian', 'Insotitor de Bord');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (111, 6, 34, 4000.00, 'Marin', 'Gabriel', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (112, 3, 26, 2700.75, 'Tudor', 'Ioana', 'Insotitor de Bord');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (113, 12, 45, 4800.60, 'Avram', 'Daniel', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (114, 10, 40, 5200.15, 'Enache', 'Laura', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (115, 8, 37, 4500.85, 'Barbu', 'Andreea', 'Mecanic');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (116, 20, 53, 7200.99, 'Petrescu', 'Marian', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (117, 4, 28, 3000.00, 'Cristea', 'Valentina', 'Pilot');

INSERT INTO Angajat (id_angajat, ani_experienta, varsta_angajat, venit_lunar, nume, prenume, categorie)
VALUES (118, 9, 35, 4100.10, 'Vlad', 'Alina', 'Insotitor de Bord');
COMMIT;
select * from Angajat;
Delete from Angajat;



INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (10, 'GPS', 116, 2022, 1500.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (15, 'Echipament pentru servirea bauturilor', 112, 2023, 1000.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (20, 'Echipament de protectie pentru mecanic', 102, 2021, 1200.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (25, 'Headset pentru comunicare in timpul zborului', 117, 2022, 800.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (30, 'Kit pentru prim-ajutor', 118, 2023, 200.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (35, 'Aparat pentru testarea presiunii pneurilor', 105, 2022, 150.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (40, 'Manual proceduri de zbor', 109, 2021, 200.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (45, 'Aparat pentru numarat pasagerii', 118, 2020, 300.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (50, 'Trusa pentru repararea motoarelor', 113, 2019, 400.00);

INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (60, 'Lanterna pentru inspectie tehnica', 105, 2022, 250.00);


COMMIT;

select * from Echipament;

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (1, '4 ore', '01-NOV-2024', '01-NOV-2024', 1);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (2, '6 ore si 30 de minute', '02-APR-2024', '02-APR-2024', 2);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (3, '3 ore si 45 de minute', '03-MAY-2024', '03-MAY-2024', 0);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (4, '5 ore', '04-SEP-2024', '04-SEP-2024', 1);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (5, '7 ore si 15 minute', '05-APR-2024', '05-APR-2024', 2);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (6, '2 ore si 30 de minute', '06-AUG-2024', '06-AUG-2024', 0);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (7, '8 ore', '07-SEP-2024', '07-SEP-2024', 1);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (8, '4 ore si 45 de minute', '08-OCT-2024', '08-OCT-2024', 1);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (9, '6 ore si 20 de minute', '09-MAR-2024', '09-MAR-2024', 2);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (10, '3 ore si 15 minute', '10-DEC-2024', '10-DEC-2024', 0);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (11, '5 ore si 30 de minute', '15-MAY-2024', '15-MAY-2024', 1);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (12, '7 ore', '16-JUN-2024', '16-JUN-2024', 3);

INSERT INTO Ruta (id_ruta, durata, data_plecare, data_sosire, numar_escale)
VALUES (13, '4 ore', '20-JUL-2024', '20-JUL-2024', 1);
COMMIT;
select * from ruta;
select * from avion;
INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (1, 'Boeing 737',2005,130, 179000.00, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (2, 'Airbus A320', 2018, 180, 77000.13, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (3, 'Boeing 777', 2003, 396, 297560.00, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (4, 'Airbus A350', 2005, 440, 280000.25, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (5, 'Airbus A321-NEO', 2011, 114, 52389.50, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (6, 'Boeing 787', 1987, 330, 227930.00, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (7, 'Airbus A380', 2014, 853, 560000.21, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (8, 'Boeing 757', 2000, 90, 37236.00, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (9, 'Boeing 767', 1990, 242, 181000.00, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (10, 'Airbus A330', 2008, 277, 233000.00, 1);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (11, 'Boeing 737 MAX 8', 2015, 230, 79000.00, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (12, 'Airbus A220-300', 2019, 150, 70000.00, 0);

INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (13, 'Bombardier CRJ900', 2008, 90, 19000.00, 0);
COMMIT;
select * from Avion;
INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (1, 'Turbina', 5000.00, 'Mare');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (2, 'Elice', 1500.00, 'Mare');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (3, 'Radar', 3000.00, 'Mic');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (4, 'Senzor presiune', 800.00, 'Mic');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (5, 'Compresor aer', 2000.00, 'Mediu');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (6, 'Sistem hidraulic', 3500.00, 'Mare');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (7, 'Sistem electric', 2800.00, 'Mediu');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (8, 'Sistem de navigație', 4200.00, 'Mediu');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (9, 'Scaun pilot', 800.00, 'Mediu');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (10, 'Sistem de oxigen', 1500.00, 'Mic');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (11, 'Fuselaj', 150000.00, 'Mare');

INSERT INTO piesaAvion (id_piesaAvion, nume, pret, dimensiune)
VALUES (12, 'Motor ', 120000.00, 'Mare');
COMMIT;

select * from piesaAvion;


INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (1, 1);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (1, 2);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (1, 3);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (2, 4);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (2, 5);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (3, 6);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (3, 7);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (4, 8);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (4, 9);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (7, 1);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (7, 2);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (8, 3);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (8, 4);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (9, 5);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (9, 6);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (10, 7);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (10, 8);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (11, 9);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (12, 10);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (12, 11);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (3, 8);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (4, 5);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (6, 2);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (7, 3);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (8, 6);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (9, 7);

INSERT INTO Avion_piesaAvion (id_avion, id_piesaAvion)
VALUES (10, 1);

select * from Avion_piesaAvion;



INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (1, 'Bucuresti', 'Paris', 350.13, 120, 12, 1);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (2, 'Iasi', 'Berlin', 250.15, 100, 7, 2);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (3, 'Cluj-Napoca', 'Londra', 400.22, 150, 3, 3);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (4, 'Sibiu', 'Madrid', 300.70, 130, 4, 4);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (5, 'Timisoara', 'Roma', 280.92, 110, 6, 5);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (6, 'Brasov', 'Viena', 320.55, 140, 5, 6);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (7, 'Constanta', 'Amsterdam', 380.11, 160, 2, 7);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (8, 'Oradea', 'Atena', 270.33, 105, 8, 8);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (9, 'Arad', 'Praga', 300.22, 125, 10, 3);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (10, 'Craiova', 'Budapesta', 260.01, 115, 9, 7);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (11, 'Bucuresti', 'Londra', 320.00, 130, 3, 1);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (12, 'Iasi', 'Roma', 250.00, 100, 6, 2);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (13, 'Cluj-Napoca', 'Madrid', 400.50, 140, 8, 3);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (14, 'Sibiu', 'Viena', 300.80, 120, 7, 4);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (15, 'Timisoara', 'Paris', 280.60, 110, 5, 5);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (16, 'Brasov', 'Budapesta', 320.70, 130, 4, 6);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (17, 'Constanta', 'Berlin', 370.90, 150, 2, 7);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (18, 'Milano', 'Atena', 270.10, 110, 8, 5);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (19, 'Arad', 'Praga', 310.00, 120, 10, 9);

INSERT INTO Zbor (id_zbor, oras_plecare, oras_destinatie, pret, numar_pasageri, id_ruta, id_avion)
VALUES (20, 'Craiova', 'Roma', 280.40, 115, 9, 10);


COMMIT;
select * from ZBOR;


select * from Zbor;
Delete from zbor;



INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (100, 1);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (103, 2);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (106, 3);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (114, 4);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (107, 5);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (111, 6);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (118, 7);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (102, 8);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (115, 9);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (116, 10);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (104, 12);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (109, 13);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (110, 14);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (108, 15);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (113, 16);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (101, 17);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (100, 18);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (117, 19);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (113, 20);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (118, 1);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (108, 3);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (111, 4);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (109, 5);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (107, 6);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (116, 7);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (104, 8);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (114, 9);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (117, 10);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (115, 11);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (118, 12);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (100, 13);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (106, 14);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (102, 15);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (109, 16);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (103, 18);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (107, 19);
INSERT INTO AngajatZbor (id_angajat, id_zbor) VALUES (110, 20);

select * from AngajatZbor;
INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (10, 'Cozma', 'Rares', 'rares.cozma@gmail.com', 30, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (20, 'Popescu', 'Ana', 'ana.popescu@gmail.com', 25, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (30, 'Mihail', 'Andrei', 'andrei.mihail@gmail.com', 42, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (40, 'Filimon', 'Maria', 'maria.filimon@gmail.com', 35, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (50, 'Stanciu', 'Cristi', 'cristi.stanciu@gmail.com', 20, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (60, 'Cosmin', 'Andrei', 'andrei.cosmin@gmail.com', 47, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (70, 'Dimitrie', 'Cristi', 'cristi.dimitrie@gmail.com', 28, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (80, 'Constantin', 'Anton', 'anton.constantin@gmail.com', 23, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (90, 'Floricica', 'Mihaela', 'mihaela.floricica@gmail.com', 37, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (100, 'Munteanu', 'Ana', 'ana.munteanu@gmail.com', 35, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (110, 'Ionescu', 'Elena', 'elena.ionescu@gmail.com', 32, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (120, 'Vasile', 'Mihail', 'mihail.vasile@gmail.com', 27, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (130, 'Dumitru', 'Florentina', 'florentina.dumitru@gmail.com', 26, 'Feminin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (140, 'Popa', 'Gabriel', 'gabriel.popa@gmail.com', 41, 'Masculin');

INSERT INTO Pasager (id_pasager, nume, prenume, email, varsta, gen)
VALUES (150, 'Vlad', 'Alina', 'alina.vlad@gmail.com', 29, 'Feminin');

select * from pasager;


INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 2, 1, 10);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (2, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 1, 2, 20);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (3, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 3, 3, 30);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (4, TO_DATE('2024-08-25', 'YYYY-MM-DD'), 1, 4, 40);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (5, TO_DATE('2024-09-30', 'YYYY-MM-DD'), 2, 5, 50);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (6, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 1, 6, 70);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (7, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 4, 7, 80);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (8, TO_DATE('2024-12-15', 'YYYY-MM-DD'), 2, 8, 90);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (9, TO_DATE('2025-01-20', 'YYYY-MM-DD'), 3, 9, 100);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (10, TO_DATE('2025-02-25', 'YYYY-MM-DD'), 1, 10, 110);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (11, TO_DATE('2025-03-01', 'YYYY-MM-DD'), 1, 11, 120);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (12, TO_DATE('2025-03-10', 'YYYY-MM-DD'), 1, 12, 130);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (13, TO_DATE('2025-03-15', 'YYYY-MM-DD'), 3, 13, 140);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (14, TO_DATE('2025-04-20', 'YYYY-MM-DD'), 2, 14, 140);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (15, TO_DATE('2025-04-25', 'YYYY-MM-DD'), 1, 15, 150);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (16, TO_DATE('2025-05-05', 'YYYY-MM-DD'), 2, 16, 150);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (17, TO_DATE('2025-05-10', 'YYYY-MM-DD'), 2, 3, 20);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (18, TO_DATE('2025-05-15', 'YYYY-MM-DD'), 1, 5, 80);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (19, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 3, 7, 110);

INSERT INTO Rezervare (id_rezervare, data_rezervarii, numarPersoane, id_zbor, id_pasager)
VALUES (20, TO_DATE('2025-07-25', 'YYYY-MM-DD'), 2, 9, 100);

select * from rezervare;

CREATE SEQUENCE SEQ_FACTURA
START WITH 10 
INCREMENT BY 10
NOCACHE
NOCYCLE;

INSERT INTO Factura (id_factura,suma,data_emiterii,id_rezervare) --fiecare factura am calculat o automat
SELECT 
    SEQ_FACTURA.NEXTVAL, --secventa pentru generare de id
    z.pret * r.numarPersoane AS suma, --pretul zborului inmultit cu nr de persoane de pe rezervare
    TO_CHAR(r.data_rezervarii,'YYYY-MM-DD') AS data_emiterii, --data rezervarii
    r.id_rezervare --FK catre rezervare (fiecare rezervare genereaza o factura)
FROM 
    Rezervare r
JOIN 
    Zbor z ON r.id_zbor = z.id_zbor;
select * from factura;
select * from feedback;
select * from pasager;


INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (1, 'negativ', 2, 10, 40);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (2, 'negativ', 1, 5, 20);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (3, 'pozitiv', 5, 7, 30);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (4, 'negativ', 2, 2, 50);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (5, 'pozitiv', 4, 6, 90);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (6, 'pozitiv', 4, 12, 100);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (7, 'negativ', 2, 3, 80);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (8, 'pozitiv', 5, 1, 70);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (9, 'pozitiv', 4, 15, 110);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (10, 'negativ', 3, 4, 120);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (11, 'negativ', 3, 2, 110);

INSERT INTO Feedback (id_feedback, tip_feedback, nota, id_zbor, id_pasager)
VALUES (12, 'negativ', 2, 10, 50);

select * from feedback;

