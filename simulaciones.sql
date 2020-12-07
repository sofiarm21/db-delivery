---SIMULACION ASIGNACION DE CONTRATOS

CREATE PROCEDURE asignacion_contratos (today DATE)
AS
    id_proveedor INTEGER;
    id_empresa_aliada INTEGER;
    id_acuerdo_servicio INTEGER;
    id_estado INTEGER;
BEGIN

    LOOP

        --1. Seleccionar proveedor y empresa aliada que no tenga contrato activo entre si

        SELECT DISTINCT p.id as id_proveedor, ea.id as id_empresa_aliada
        INTO id_proveedor, id_empresa_aliada
        FROM proveedores p
        INNER JOIN CONTRATOS c
        ON c.id_proveedor = p.id
        INNER JOIN empresas_aliadas ea
        ON NOT EXISTS (
            SELECT c.id_empresa_aliada
            FROM contratos c
            WHERE c.id_empresa_aliada = ea.id
            AND c.id_proveedor = p.id
            AND TO_DATE('01/06/2020', 'DD-MM-YYYY')
                BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
        )
        ORDER BY p.id, ea.id ASC
        ;

         --2. Seleccionar acuerdo de servicio

        SELECT a_s.id
        INTO id_acuerdo_servicio
        FROM ACUERDOS_SERVICIOS a_s
        WHERE a_s.id_proveedor = id_proveedor
        ;

        --3. Seleccionar estado al que aplica
        SELECT  l.id
        INTO id_estado
        FROM LUGARES l
        INNER JOIN SEDES s
        ON s.id_proveedor = id_proveedor
        INNER JOIN s_l sl
        ON sl.id_sede = s.id
        INNER JOIN lugares z
        ON z.id = sl.id_lugar
        WHERE z.id_pertenece = l.id
        FETCH FIRST 1 ROWS ONLY;
        ;

        --4. Se crea e inserta el contrato
        INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha)
            VALUES (secuencia_contratos.nextval,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha(today,ADD_MONTHS(today, dbms_random.value(2,8))));

        EXIT WHEN (
            --Comprobar si existen proveedores sin contrato
            SELECT COUNT (p.id)
            FROM proveedores p
            WHERE NOT EXISTS(
                    SELECT c.id
                    FROM contratos c
                    WHERE c.id_proveedor = p.id
            )
        ) = 0;
    END LOOP;

END;
