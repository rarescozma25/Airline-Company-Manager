--exercitiul 11
CREATE SEQUENCE Promotii_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;
select * from Avion;
select * from zbor;
CREATE TABLE Promotii(
    id_promotie INTEGER PRIMARY KEY,
    id_zbor integer,
    pret_vechi number,
    pret_nou number,
    mesaj VARCHAR2(50))
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER trig_ex11
BEFORE UPDATE OF pret,numar_pasageri on Zbor
FOR EACH ROW
DECLARE
v_capacitate_avion Avion.numar_pasageri%type;
mesaj VARCHAR2(50);
exc1 exception;
v_reducere number;
BEGIN
SELECT numar_pasageri
INTO v_capacitate_avion
From Avion
Where id_avion=:NEW.id_avion;

IF :NEW.numar_pasageri>v_capacitate_avion then
    :NEW.numar_pasageri:=:OLD.numar_pasageri;
    raise exc1;
end if;

IF :NEW.pret<:OLD.pret then
    v_reducere:=((:OLD.pret-:NEW.pret)/:OLD.pret)*100; --procentul de reducere
    IF v_reducere>20 then
        DBMS_OUTPUT.PUT_LINE('A fost adaugata o promotie!');
        mesaj:='Pretul zborului cu id-ul '||:NEW.id_zbor ||' a scazut cu '||v_reducere||'%';
        INSERT INTO Promotii(id_promotie,id_zbor,pret_vechi,pret_nou,mesaj) values (Promotii_SEQ.NEXTVAL,:OLD.id_zbor,:OLD.pret,:NEW.pret,mesaj);
    end if;
end if;
EXCEPTION
    When exc1 then
        DBMS_OUTPUT.PUT_LINE('Numarul de pasageri nu poate fi mai mare decat capacitatea avionului!');
END;

UPDATE Zbor
SET numar_pasageri=250
where id_zbor=11;
COMMIT;
select * from zbor;
select * from promotii;
select * from avion;
ROLLBACK;

SET SERVEROUTPUT ON;


