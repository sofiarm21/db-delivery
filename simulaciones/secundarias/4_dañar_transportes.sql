---SIMULACION DAÑAR TRANSPORTES

CREATE OR REPLACE PROCEDURE danar_transportes( cantidad_dañar INT )
IS
contador INTEGER;
id_transporte INTEGER;
nombre_proveedor VARCHAR2(30);
nombre_lugar VARCHAR2(30);
nombre_tipo VARCHAR2(30);
BEGIN
    DBMS_OUTPUT.PUT_LINE('4. ------SIMULACIÓN DAÑAR TRANSPORTES-------');
    DBMS_OUTPUT.PUT_LINE('4.1 Se proceden a dañar '||cantidad_dañar||' transportes');
    contador:= 1;
    WHILE contador <= cantidad_dañar
    LOOP
        /* 1. Se  elige el id random del transporte a dañar */
        SELECT t.placa
        INTO id_transporte
        FROM transportes t
        WHERE t.estado = 'activo'
        ORDER BY DBMS_RANDOM.RANDOM
        FETCH FIRST 1 ROWS ONLY
        ;

        SELECT p.datos_empresa.nombre, t.tipo, l.nombre
        INTO nombre_proveedor, nombre_tipo, nombre_lugar
        FROM proveedores p
        INNER JOIN sedes s
        ON s.id_proveedor = p.id
        INNER JOIN transportes t
        ON t.id_sede = s.id
        INNER JOIN s_l sl
        ON sl.id_sede = s.id
        INNER JOIN lugares l
        ON l.id = sl.id_lugar
        WHERE t.placa = id_transporte
        AND sl.pertenece = 1
        ;

        DBMS_OUTPUT.PUT_LINE('4.2 Transporte a dañar #'||contador||':' );
        DBMS_OUTPUT.PUT_LINE('      Proveedor: '||nombre_proveedor);
        DBMS_OUTPUT.PUT_LINE('      Sede: '||nombre_lugar);
        DBMS_OUTPUT.PUT_LINE('      Tipo de transporte: '||nombre_tipo||' '||id_transporte);

        /* 2. Se  daña */
        UPDATE transportes
        SET estado = 'reparación'
        WHERE placa = id_transporte
        ;

        contador:= contador + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('4.3 Ya se dañaron todos los transportes');
    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN DAÑAR TRANSPORTES-------');

END;
/


--TODO: Caso borde de si no hay mas trasnportes por dañar
