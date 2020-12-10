---SIMULACION REPONER TRANSPORTES

CREATE OR REPLACE PROCEDURE reponer_transportes
IS
sede_id INTEGER;
id_transporte INTEGER;
flag_sede INTEGER;
cant_transportes INTEGER;
contador_sede INTEGER;
contador INTEGER;
nombre_proveedor VARCHAR2(30);
lugar_sede VARCHAR2(30);
tipo_transporte VARCHAR2(30);
BEGIN
    DBMS_OUTPUT.PUT_LINE('5. ------SIMULACIÓN REPONER TRANSPORTES-------');
    DBMS_OUTPUT.PUT_LINE('5.1 Se procede a revisar cuales sedes tienen menos del 60% de sus unidades activas...');

    /* 1. Se revisa si existen unidades por dañar */

    SELECT COUNT(s.id)
    INTO flag_sede
    FROM sedes s
    WHERE (
        (SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
            AND t.estado = 'reparación'
        ) > (
            SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
        )* 0.3
    )
    ;


    IF flag_sede = 0 THEN
        DBMS_OUTPUT.PUT_LINE('5.2 No es necesario reparar ninguna unidad');
    END IF;

    contador_sede:= 0;
    WHILE flag_sede > 0
    LOOP
        /* 2. Se selecciona la sede con mas del 30% de u dañadas */
        SELECT s.id, p.datos_empresa.nombre, l.nombre
        INTO sede_id, nombre_proveedor, lugar_sede
        FROM sedes s
        INNER JOIN proveedores p
        ON s.id_proveedor = p.id
        INNER JOIN s_l sl
        ON sl.id_sede = s.id
        INNER JOIN lugares l
        ON l.id = sl.id_lugar
        WHERE (
            SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
            AND t.estado = 'reparación'
        ) > (
            SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
        ) * 0.3
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('5.2 La sede '||sede_id||' de la zona '||lugar_sede||' del proveedor '||nombre_proveedor||' tiene menos del 60% de sus unidades de transporte activas');

        /* 3. Se cuentan cuantas tiene dañadas */
        SELECT COUNT(t.placa)
        INTO cant_transportes
        FROM transportes t
        WHERE t.id_sede = sede_id
        AND t.estado = 'reparación'
        ;

        DBMS_OUTPUT.PUT_LINE('5.3 Reparando sus '||cant_transportes||' unidades dañadas...');

        contador:= 0;

        WHILE contador < cant_transportes
        LOOP
            SELECT t.placa, t.tipo
            INTO id_transporte, tipo_transporte
            FROM transportes t
            WHERE t.id_sede = sede_id
            AND t.estado = 'reparación'
            FETCH FIRST 1 ROWS ONLY
            ;

            DBMS_OUTPUT.PUT_LINE('5.4 Reparando unidad '||id_transporte||' del tipo '||tipo_transporte);

            UPDATE transportes
            SET estado = 'activo'
            WHERE placa = id_transporte
            ;

            contador:= contador + 1;

        END LOOP;

        SELECT COUNT(s.id)
        INTO flag_sede
        FROM sedes s
        WHERE (
            SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
            AND t.estado = 'reparación'
        ) > (
            SELECT COUNT(t.placa)
            FROM transportes t
            WHERE t.id_sede = s.id
        ) * 0.3
        ;

        IF flag_sede = 0 THEN
            DBMS_OUTPUT.PUT_LINE('5.3 Han sido reparadas todas las unidades necesarias');
        END IF;
        contador_sede:= contador_sede + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN REPARAR TRANSPORTES-------');

END;
/
