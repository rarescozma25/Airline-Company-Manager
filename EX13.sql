select * from pasager;
select * from feedback;
select * from Rezervare;
SET SERVEROUTPUT ON;
CREATE OR REPLACE PACKAGE Exercitiul13
IS
TYPE Pasager_feedback_negativ IS RECORD(
    id_pasager Pasager.id_pasager%type,
    nume Pasager.nume%type,
    prenume Pasager.prenume%type,
    id_zbor Zbor.id_zbor%type,
    oras_plecare Zbor.oras_plecare%type,
    oras_destinatie Zbor.oras_destinatie%type,
    nota_feedback Feedback.nota%type,
    numar_persoane Rezervare.numarpersoane%type);
    
Type Lista_Pasager_feedback_negativ IS TABLE OF Pasager_feedback_negativ;

FUNCTION Pasageri_cu_feedback_negativ(id_zbor Zbor.id_zbor%type) Return Lista_Pasager_feedback_negativ;

FUNCTION Venit_Total_Zbor(copy_id_zbor Zbor.id_zbor%type) return number;

PROCEDURE Procedura_Pasageri_cu_feedback_negativ(id_zbor Zbor.id_zbor%type);

PROCEDURE Venituri_angajati_zbor(id_zbor Zbor.id_zbor%type);

END Exercitiul13;
select * from feedback;
select * from rezervare;

CREATE OR REPLACE PACKAGE BODY Exercitiul13 IS
FUNCTION Pasageri_cu_feedback_negativ (id_zbor Zbor.id_zbor%type) Return Lista_Pasager_feedback_negativ IS
v_lista_pasageri Lista_Pasager_feedback_negativ:=Lista_Pasager_feedback_negativ();
copy_id_zbor Zbor.id_zbor%type:=id_zbor;
BEGIN
for i in (
    Select p.id_pasager,p.nume,p.prenume,z.id_zbor,z.oras_plecare,z.oras_destinatie,f.nota,r.numarpersoane
    FROM FEEDBACK f
    JOIN Pasager p on f.id_pasager=p.id_pasager
    JOIN Rezervare r on f.id_pasager=r.id_pasager
    JOIN Zbor z on r.id_zbor=z.id_zbor
    where f.id_zbor=copy_id_zbor and f.tip_feedback='negativ')
    LOOP
        v_lista_pasageri.Extend;
        v_lista_pasageri(v_lista_pasageri.count):=Pasager_feedback_negativ(i.id_pasager,i.nume,i.prenume,i.id_zbor,i.oras_plecare,i.oras_destinatie,i.nota,i.numarpersoane);
    END LOOP;
    RETURN v_lista_pasageri;
END Pasageri_cu_feedback_negativ;

FUNCTION Venit_Total_Zbor(copy_id_zbor Zbor.id_zbor%type) return number IS
v_venit_total number:=0;
BEGIN
for i in (
        select r.numarpersoane,z.pret
        from Rezervare r
        JOIN Zbor z on r.id_zbor=z.id_zbor
        where z.id_zbor=copy_id_zbor)
        LOOP
        v_venit_total:=v_venit_total+(i.numarpersoane*i.pret);
END LOOP;
RETURN v_venit_total;
END Venit_Total_Zbor;

PROCEDURE Procedura_Pasageri_cu_feedback_negativ(id_zbor Zbor.id_zbor%type) IS
    v_lista Lista_Pasager_feedback_negativ;
    BEGIN
    v_lista:=Pasageri_cu_feedback_negativ(id_zbor);
    for i in 1..v_lista.count loop
        DBMS_OUTPUT.PUT_LINE('Pasagerul cu id-ul '||v_lista(i).id_pasager||' a oferit feedback negativ');
        DBMS_OUTPUT.PUT_LINE('Nume: '||v_lista(i).nume);
        DBMS_OUTPUT.PUT_LINE('Prenume: '||v_lista(i).prenume);
        DBMS_OUTPUT.PUT_LINE('Numarul de persoane de pe rezervare este '||v_lista(i).numar_persoane);
        DBMS_OUTPUT.PUT_LINE('Acesta a oferit nota: '||v_lista(i).nota_feedback||' pentru zborul cu plecarea din '||v_lista(i).oras_plecare||' catre destinatia '||v_lista(i).oras_destinatie);
    end loop;
END Procedura_Pasageri_cu_feedback_negativ;

PROCEDURE Venituri_angajati_zbor(id_zbor Zbor.id_zbor%type) IS
v_suma_totala number:=0;
BEGIN
for i in(
    select a.venit_lunar
    from Angajat a
    JOIN AngajatZbor az on a.id_angajat=az.id_angajat
    where az.id_zbor=id_zbor)
    LOOP
    v_suma_totala:=v_suma_totala+i.venit_lunar;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Suma salariilor lunare a angajatilor pentru zborul cu id-ul ' ||id_zbor|| ' este '||v_suma_totala);
END Venituri_angajati_zbor;

END Exercitiul13;

select * from zbor;
BEGIN
    Exercitiul13.Procedura_Pasageri_cu_feedback_negativ(10);
END;

BEGIN
    DBMS_OUTPUT.PUT_LINE(Exercitiul13.Venit_Total_Zbor(5));
END;

BEGIN
 Exercitiul13.Venituri_angajati_zbor(7);
END;




