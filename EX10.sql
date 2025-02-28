
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER trig_ex10
AFTER insert or delete on Echipament
DECLARE
v_pret_total echipament.pret_echipament%type;
BEGIN
SELECT SUM(pret_echipament) INTO v_pret_total
FROM Echipament;
IF INSERTING THEN
    IF v_pret_total>6000 then
        UPDATE Angajat
        SET venit_lunar=venit_lunar+200
        WHERE EXISTS (SELECT * FROM Echipament where Echipament.id_angajat=Angajat.id_angajat);
        DBMS_OUTPUT.PUT_LINE('Venitul angajatilor ce au echipament tocmai a fost marit!');
    end if;
ELSIF DELETING THEN
    if v_pret_total<6000 then
        UPDATE Angajat
        SET venit_lunar=venit_lunar-200
        WHERE EXISTS (SELECT * FROM Echipament where Echipament.id_angajat=Angajat.id_angajat);
        DBMS_OUTPUT.PUT_LINE('Venitul angajatilor ce au echipament tocmai a fost scazut!');
    END IF;
END IF;
END;
SELECT SUM(pret_echipament)
FROM Echipament;
select * from echipament;
select * from angajat;
INSERT INTO Echipament (id_echipament, nume_echipament, id_angajat, an_achizitie, pret_echipament)
VALUES (65, 'Random', 116, 2022, 500.00);
ROLLBACK;
DELETE FROM ECHIPAMENT
WHERE ID_ECHIPAMENT=65;