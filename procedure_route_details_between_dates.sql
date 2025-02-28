
CREATE OR REPLACE PROCEDURE Exercitiu9(
    v_data_start DATE, v_data_sfarsit DATE) IS
    v_venit_ruta number :=0;
    v_nr_pasageri number :=0;
    v_nr_zboruri number :=0;
    v_medie_feedback number:=0;
    v_costuri_piese number :=0;
    v_numar_rute number :=0;
    no_feedback exception;
    no_piesa_avion exception;
    numar_feedback number:=0;
    numar_piese number:=0;
    CURSOR Rute is
        SELECT *
        FROM RUTA r
        Where r.data_plecare BETWEEN v_data_start AND v_data_sfarsit AND
              r.data_sosire BETWEEN v_data_start AND v_data_sfarsit;
    BEGIN
        SELECT count(*)
        INTO v_numar_rute
        FROM RUTA r
        Where r.data_plecare BETWEEN v_data_start AND v_data_sfarsit AND
              r.data_sosire BETWEEN v_data_start AND v_data_sfarsit;
        if v_numar_rute=0 then
            RAISE NO_DATA_FOUND;
        end if;
        for ruta in Rute loop
        BEGIN
        SELECT COUNT(distinct p.id_piesaavion) INTO numar_piese
            from piesaAvion p
            JOIN Avion_piesaAvion ap on p.id_piesaAvion=ap.id_piesaAvion
            JOIN Avion a on ap.id_avion=a.id_avion
            JOIN Zbor z on a.id_avion=z.id_avion
            WHERE z.id_ruta=ruta.id_ruta;
            if numar_piese=0 then
                raise no_piesa_avion;
            end if;
            SELECT COUNT(distinct f.id_feedback) INTO numar_feedback
            FROM Feedback f
            JOIN Zbor z on f.id_zbor=z.id_zbor
            where z.id_ruta=ruta.id_ruta;
            if numar_feedback=0 then
                raise no_feedback;
            end if;
            
            
            SELECT sum(f.suma),count (distinct p.id_pasager),count(distinct z.id_zbor), avg(feedb.nota),sum(piesa.pret)
            INTO v_venit_ruta,v_nr_pasageri,v_nr_zboruri,v_medie_feedback,v_costuri_piese
            FROM Ruta r
            JOIN Zbor z on r.id_ruta=z.id_ruta
            JOIN Rezervare rez on z.id_zbor=rez.id_zbor
            JOIN Factura f on rez.id_rezervare=f.id_rezervare
            JOIN Pasager p on rez.id_pasager=p.id_pasager
            JOIN Feedback feedb on z.id_zbor=feedb.id_zbor
            JOIN Avion a on z.id_avion=a.id_avion
            JOIN Avion_piesaAvion ap on a.id_avion=ap.id_avion
            JOIN piesaAvion piesa on ap.id_piesaAvion=piesa.id_piesaAvion
            where r.id_ruta=ruta.id_ruta;

        DBMS_OUTPUT.PUT_LINE('Ruta cu id-ul: '||ruta.id_ruta|| ' are urmatoarele detalii:');
        DBMS_OUTPUT.PUT_LINE('-Venitul total generat este de: '||v_venit_ruta);
        DBMS_OUTPUT.PUT_LINE('-Numarul total de pasageri de pe ruta este : '||v_nr_pasageri);
        DBMS_OUTPUT.PUT_LINE('-Numarul zborurilor de pe aceasta ruta este de: '||v_nr_zboruri);
        DBMS_OUTPUT.PUT_LINE('-Media feedback-urilor este: '||v_medie_feedback);
        DBMS_OUTPUT.PUT_LINE('-Costul total al pieselor de avion ce opereaza pe aceasta ruta este: '||v_costuri_piese);
        
        EXCEPTION
            When no_feedback then
                DBMS_OUTPUT.PUT_LINE('Nu exista feedback-uri pentru ruta cu id-ul: ' || ruta.id_ruta);
            WHEN no_piesa_avion then
                DBMS_OUTPUT.PUT_LINE('Nu exista piese de avion pentru aeronavele care opereaza pe ruta cu id-ul: ' || ruta.id_ruta);
        END;
              
        end loop;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Nu exista rute cuprinse intre datele: '|| v_data_start || ' si ' || v_data_sfarsit);
    END;
SET SERVEROUTPUT ON;
select * from ruta;
BEGIN
    Exercitiu9('9-DEC-2024','11-DEC-2024'); --nu exista feedback
END;

BEGIN
    Exercitiu9('05-AUG-2024','05-OCT-2024'); 
END;
BEGIN
    Exercitiu9('20-JUL-2023','20-JUL-2023'); 
END;
BEGIN
    Exercitiu9('15-JUN-2024','17-JUN-2024'); 
END;

BEGIN
    Exercitiu9('05-APR-2024','08-SEP-2024'); 
END;

SET SERVEROUTPUT ON;
select * from factura;
    
