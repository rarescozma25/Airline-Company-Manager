SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION Exercitiu8(v_model_avion Avion.model%type)
    RETURN NUMBER IS
    v_venit number:=0;
    v_nrangajati number:=0;
    v_nravioaneeligibile number:=0;
BEGIN
    BEGIN
        SELECT COUNT(*)
        INTO v_nravioaneeligibile
        FROM Avion
        WHERE model=v_model_avion;
    if v_nravioaneeligibile=0 then
        RAISE NO_DATA_FOUND;
    elsif v_nravioaneeligibile>1 then
        RAISE TOO_MANY_ROWS;
    end if;
    EXCEPTION
        WHEN NO_DATA_FOUND then
             DBMS_OUTPUT.PUT_LINE('Nu exista un avion cu numele dat! '|| v_model_avion);
             RETURN NULL;
        WHEN TOO_MANY_ROWS then
            DBMS_OUTPUT.PUT_LINE('Mai multe avioane cu acelasi nume! '||v_model_avion);
            RETURN NULL;
    END;
        SELECT SUM(a.venit_lunar)
        INTO v_venit
        FROM Angajat a
        JOIN AngajatZbor az on a.id_angajat=az.id_angajat
        JOIN Zbor z ON az.id_zbor=z.id_zbor
        JOIN AVION av on z.id_avion=av.id_avion
        Where av.model=v_model_avion;
        if v_venit is null then
            DBMS_OUTPUT.PUT_LINE('Avionul cu modelul ' || v_model_avion || ' nu participa la niciun zbor!');
            RETURN NULL;
        end if;
    RETURN v_venit;
    EXCEPTION
        WHEN OTHERS THEN
             DBMS_OUTPUT.PUT_LINE('Alta eroare!');
END;
select * from avion;
BEGIN
DBMS_OUTPUT.PUT_LINE(Exercitiu8('Boeing 787'));
END;
BEGIN
DBMS_OUTPUT.PUT_LINE(Exercitiu8('Bombardier CRJ900'));
END;

BEGIN
DBMS_OUTPUT.PUT_LINE(Exercitiu8('Boeing 777'));
END;
INSERT INTO Avion (id_avion, model, an_fabricatie, numar_pasageri, greutate_maxima, transcontinental)
VALUES (14, 'Boeing 787', 2008, 90, 19000.00, 0);
select * from avion;
DELETE FROM AVION
WHERE id_avion=14;
BEGIN
DBMS_OUTPUT.PUT_LINE(Exercitiu8('Rares'));
END;
