SET SERVEROUTPUT ON;
CREATE TABLE Modificari(
    eveniment VARCHAR2(50),
    obiect VARCHAR2(50),
    utilizator VARCHAR2(50),
    data_eveniment TIMESTAMP,
    tip_obiect VARCHAR2(50),
    descriere VARCHAR2(100)
                        )
ALTER TRIGGER trig_ex12 DISABLE;

CREATE OR REPLACE TRIGGER trig_ex12
BEFORE CREATE OR DROP OR ALTER ON SCHEMA 
DECLARE
v_motiv VARCHAR2(50);
v_numar_modificari integer;
exceptie exception;
BEGIN
    IF SYS.SYSEVENT='CREATE' then
        v_motiv:='S-a creat un obiect in schema!';
        DBMS_OUTPUT.PUT_LINE(v_motiv);
    ELSIF SYS.SYSEVENT='ALTER' then
        v_motiv:='S-a modificat un obiect in schema!';
        DBMS_OUTPUT.PUT_LINE(v_motiv);
    ELSIF SYS.SYSEVENT='DROP' then
        v_motiv:='S-a sters un obiect in schema!';
        DBMS_OUTPUT.PUT_LINE(v_motiv);
    END IF;
    
    INSERT INTO Modificari(eveniment,obiect,utilizator,data_eveniment,tip_obiect,descriere) 
    VALUES (SYS.SYSEVENT,SYS.DICTIONARY_OBJ_NAME,SYS.LOGIN_USER,SYSTIMESTAMP,SYS.DICTIONARY_OBJ_TYPE,v_motiv);
    SELECT COUNT(*)
    INTO v_numar_modificari
    FROM Modificari
    WHERE UPPER(obiect)=UPPER(SYS.DICTIONARY_OBJ_NAME)and data_eveniment>(SYSTIMESTAMP-INTERVAL '1' DAY); --numar numarul de modificari realizate in ultimele 24 de ore asupra tabelei ce a declansat triggerul
    
    if v_numar_modificari>4 then
        raise exceptie;
        
    end if;
    
EXCEPTION
    When exceptie then
        DBMS_OUTPUT.PUT_LINE('S-au realizat mai mult de 4 modificari asupra obiectului in ultimele 24 de ore ' || SYS.DICTIONARY_OBJ_NAME);
        RAISE;
END;
select * from modificari;
delete from modificari;
select * from tabela_test;
CREATE TABLE tabela_test(
    nume VARCHAR2(30)
    )
ALTER TABLE tabela_test ADD(
    numar number
    )

ALTER TABLE tabela_test ADD(
    alt_numar number
    )
ALTER TABLE tabela_test ADD(
    inca_unul number
    )
drop table tabela_test;
