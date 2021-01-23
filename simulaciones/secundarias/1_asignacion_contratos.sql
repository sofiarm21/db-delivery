---SIMULACION ASIGNACION DE CONTRATOS

CREATE OR REPLACE PROCEDURE asignacion_contratos( today DATE )
IS
    id_proveedor INTEGER;
    id_empresa_aliada INTEGER;
    id_acuerdo_servicio INTEGER;
    id_estado INTEGER;
    id_nuevo_contrato INTEGER;
    flag INTEGER;
    nombre_proveedor VARCHAR2(30);
    nombre_empresa_aliada VARCHAR2(30);
    nombre_estado VARCHAR2(30);
BEGIN
    DBMS_OUTPUT.PUT_LINE('1. ------SIMULACIÓN ASIGNACIÓN DE CONTRATOS-------');
    LOOP
        /* 1. Seleccionar proveedor y empresa aliada que no tenga contrato activo entre si */

        DBMS_OUTPUT.PUT_LINE('1.1 Buscando proveedor y empresa aliada que no tengan un contrato activo en común....');

        SELECT DISTINCT p.id as id_proveedor, ea.id as id_empresa_aliada, p.datos_empresa.nombre as nombre_proveedor, ea.datos_empresa.nombre as nombre_empresa_aliada
        INTO id_proveedor, id_empresa_aliada, nombre_proveedor, nombre_empresa_aliada
        FROM proveedores p
        INNER JOIN CONTRATOS c
        ON c.id_proveedor = p.id
        INNER JOIN empresas_aliadas ea
        ON NOT EXISTS (
            SELECT c.id_empresa_aliada
            FROM contratos c
            WHERE c.id_empresa_aliada = ea.id
            AND c.id_proveedor = p.id
            AND today BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
        )
        ORDER BY p.id, ea.id ASC
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('1.2 No existe contrato entre proveedor '||nombre_proveedor||'y '||nombre_empresa_aliada||'-----');

       /* 2. Seleccionar acuerdo de servicio */

        SELECT a_s.id
        INTO id_acuerdo_servicio
        FROM ACUERDOS_SERVICIOS a_s
        WHERE a_s.id_proveedor = id_proveedor
        FETCH FIRST 1 ROWS ONLY
        ;

        /*3. Seleccionar estado al que aplica */

        SELECT  l.id, l.nombre
        INTO id_estado, nombre_estado
        FROM LUGARES l
        INNER JOIN SEDES s
        ON s.id_proveedor = id_proveedor
        INNER JOIN s_l sl
        ON sl.id_sede = s.id
        INNER JOIN lugares z
        ON z.id = sl.id_lugar
        WHERE z.id_pertenece = l.id
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('1.3 Se procede a crear un contrato entre este proveedor y esta empresa aliada');

        DBMS_OUTPUT.PUT_LINE('1.4 Detalles del contrato:');
        DBMS_OUTPUT.PUT_LINE('1.4.1 Estado donde aplica '||nombre_estado);

        /* 4. Se crea e inserta el contrato */


        INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha)
            VALUES (secuencia_contratos.nextval,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha(today,ADD_MONTHS(today, dbms_random.value(2,8))));

        /* 5. Se selecciona el id del nuevo contrato creado */

        SELECT secuencia_contratos.CURRVAL
        INTO id_nuevo_contrato
        FROM DUAL
        ;
        DBMS_OUTPUT.PUT_LINE('1.5 Se ha generado un nuevo contrato con id '||id_nuevo_contrato);

       /*6. Se crea el detalle de contrato */
        INSERT INTO det_contratos  VALUES (id_nuevo_contrato, id_estado);


       /*Comprobar si existen proveedores sin contrato*/
        SELECT COUNT (p.id)
        INTO flag
        FROM proveedores p
        WHERE NOT EXISTS(
                SELECT c.id
                FROM contratos c
                WHERE c.id_proveedor = p.id
        )
        FETCH FIRST 1 ROWS ONLY
        ;

        IF flag = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Ya todos los proveedores tienen contratos activos');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Aún existen proveedores que no tienen contratos activos');
        END IF;

        EXIT WHEN flag = 0;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('-----TERMINANDO SIMULACIÓN ASIGNACIÓN DE CONTRATOS-----');
END;
/


/*TODO: Verificar que el nuevo contrato no solape*/
/*TODO: Caso borde donde no hay mas proveedores y empresas aliadas no unidas*/
/*TODO: Revisar que cuerdo de servicio este activo*/
