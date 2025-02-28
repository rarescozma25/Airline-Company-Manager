SET SERVEROUTPUT ON;
select * from Angajat;
select * from AngajatZbor;
select * from Avion_piesaAvion;
select * from piesaAvion;
select * from Avion;
select * from ZBOR;
CREATE OR REPLACE PROCEDURE Exercitiu7(catergorie_angajat IN Angajat.categorie%type) IS
    TYPE Zboruri is table of VARCHAR(100) INDEX BY BINARY_INTEGER;
    TYPE Avioane is table of Avion.id_avion%type INDEX BY BINARY_INTEGER;
    Cursor Angajati is
        select distinct a.nume,a.prenume,z.id_avion,z.oras_plecare,z.oras_destinatie
        from Angajat a
        JOIN AngajatZbor az on a.id_angajat=az.id_angajat
        JOIN Zbor z on az.id_zbor=z.id_zbor
        Where a.categorie=catergorie_angajat
        ORDER BY a.nume,a.prenume;
    Cursor preturi_piesa_avion(avion_id Avion.id_avion%type) IS
        SELECT pa.pret as pret
        FROM piesaAvion pa
        JOIN Avion_piesaAvion Apa on pa.id_piesaAvion=Apa.id_piesaAvion
        JOIN Avion A on Apa.id_avion=A.id_avion
        Where A.id_avion=avion_id;
    v_nume Angajat.nume%type;
    v_prenume Angajat.prenume%type;
    v_id_avion Avion.id_avion%type;
    v_pret number;
    v_zboruri Zboruri;
    v_avioane Avioane;
    v_index BINARY_INTEGER:=1;
    v_oras_plecare Zbor.oras_plecare%type;
    v_oras_destinatie Zbor.oras_destinatie%type;
    v_ant_nume Angajat.nume%type;
    v_ant_prenume Angajat.prenume%type;
    BEGIN
        OPEN Angajati;
        LOOP
        FETCH Angajati INTO v_nume,v_prenume,v_id_avion,v_oras_plecare,v_oras_destinatie;
        EXIT WHEN Angajati%NOTFOUND;
        IF v_ant_nume IS NULL AND v_ant_prenume IS NULL THEN --primul angajat
            v_zboruri(v_index):='Zbor: '||v_oras_plecare||' - '||v_oras_destinatie;
            v_avioane(v_index):=v_id_avion;
            v_index:=v_index+1;
        ELSE
        IF v_nume=v_ant_nume and v_prenume=v_ant_prenume then   --daca sunt la acelasi angajat(ordinea imi este garantata de order by)
            v_zboruri(v_index):='Zbor: '||v_oras_plecare||' - '||v_oras_destinatie;
            v_avioane(v_index):=v_id_avion;
            v_index:=v_index+1;
        ELSE --daca am trecut la un angajat nou
            DBMS_OUTPUT.PUT_LINE('Angajatul: '||v_nume||' '||v_prenume);
            for i in 1..v_index-1 loop
                DBMS_OUTPUT.PUT_LINE(v_zboruri(i));
                 v_pret:=0;
                FOR Piesa in preturi_piesa_avion(v_id_avion) LOOP
                    v_pret:=v_pret+Piesa.pret;
                END LOOP;
                DBMS_OUTPUT.PUT_LINE('Costul total al pieselor avionului este: '||v_pret);
                end loop;
            v_zboruri.delete;
            v_avioane.delete;
            v_index:=1;
            v_zboruri(v_index):='Zbor: '||v_oras_plecare||' - '||v_oras_destinatie;
            v_avioane(v_index):=v_id_avion;
            v_index:=v_index+1;
        END IF;
        END IF;
        v_ant_nume:=v_nume;
        v_ant_prenume:=v_prenume; 
        END LOOP;
        CLOSE Angajati;
    END;
select * from Angajat;  --106
select * from AngajatZbor;
select * from zbor;

BEGIN
 Exercitiu7('Pilot');
END;
SET SERVEROUTPUT ON;
