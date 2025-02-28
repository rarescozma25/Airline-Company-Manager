--problema 6

CREATE OR REPLACE PROCEDURE Exercitiu6 IS
    TYPE zile IS TABLE OF VARCHAR2(15);
    zilele_saptamanii zile := zile('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

    TYPE RezervariZileleSaptamanii IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
    numar_rezervari_zi RezervariZileleSaptamanii;
    
    TYPE Rute IS VARRAY(5) OF VARCHAR2(50);
    v_rute Rute := Rute();
    
    TYPE Pasageri IS TABLE OF VARCHAR(30) INDEX BY BINARY_INTEGER;
    v_pasageri Pasageri;
    
    TYPE SumePasageri IS TABLE OF zbor.pret%type INDEX BY BINARY_INTEGER;
    sume SumePasageri;

    ziua_saptamanii_max VARCHAR2(20);
    maxim NUMBER := 0;
BEGIN
    FOR Pasager IN (
        SELECT p.nume||' '||p.prenume AS nume_complet, 
               SUM(z.pret*r.numarPersoane) AS suma_totala
        FROM Pasager p
        JOIN Rezervare r ON p.id_pasager=r.id_pasager
        JOIN Zbor z ON r.id_zbor=z.id_zbor
        GROUP BY p.nume,p.prenume
    )
    LOOP
        v_pasageri(v_pasageri.COUNT+1):=Pasager.nume_complet;
        sume(sume.COUNT+1):=Pasager.suma_totala;
    END LOOP;

    FOR Ruta IN (
        SELECT r.id_ruta,COUNT(z.id_zbor) AS nr_zboruri
        FROM Ruta r
        JOIN Zbor z ON r.id_ruta=z.id_ruta
        GROUP BY r.id_ruta
        ORDER BY COUNT(z.id_zbor) DESC
        FETCH FIRST 5 ROWS ONLY
    )
    LOOP
        v_rute.EXTEND; 
        v_rute(v_rute.COUNT):='Ruta cu id-ul ' || Ruta.id_ruta || ' are ' || Ruta.nr_zboruri || ' zboruri.';
    END LOOP;
    FOR i IN 1..zilele_saptamanii.COUNT LOOP
        numar_rezervari_zi(i):=0;
    END LOOP;
    FOR Rezervare IN (
        SELECT TO_CHAR(r.data_rezervarii,'FMDay') AS zi_rezervare --cu day nu mergea, imi dadea eroare no_data_found
        FROM Rezervare r
    )
    LOOP
        FOR i IN 1..zilele_saptamanii.COUNT LOOP
            IF UPPER(Rezervare.zi_rezervare)=UPPER(zilele_saptamanii(i)) THEN
                numar_rezervari_zi(i):=NVL(numar_rezervari_zi(i), 0) + 1;
            END IF;
        END LOOP;
    END LOOP;

    FOR i IN 1..zilele_saptamanii.COUNT LOOP
        IF numar_rezervari_zi(i)>maxim THEN
            maxim:=numar_rezervari_zi(i);
            ziua_saptamanii_max:=zilele_saptamanii(i);
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Pasagerii activi si suma cheltuita de fiecare:');
    FOR i IN 1..v_pasageri.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_pasageri(i) || ' cu suma cheltuita de ' || sume(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Cele mai populare 5 rute sunt:');
    FOR i IN 1..v_rute.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(i || '. ' || v_rute(i));
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Ziua saptamanii cu cele mai multe rezervari este: ' || ziua_saptamanii_max);
END;


BEGIN
Exercitiu6;
END;
SET SERVEROUTPUT ON;
