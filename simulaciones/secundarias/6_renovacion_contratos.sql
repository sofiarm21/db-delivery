---SIMULACION RENOVACIÓN  CONTRATOS

CREATE OR REPLACE PROCEDURE renovacion_contratos( today DATE )
IS
contratos_id INTEGER;
contrato_id INTEGER;
contrato_nuevo_id INTEGER;
detalle_contrato_id INTEGER;
proveedor_id INTEGER;
empresa_aliada_id INTEGER;
acuerdo_servicio_id INTEGER;
estado_id INTEGER;
fecha_fin INTEGER;
random INTEGER;
as_n_envios INTEGER;
as_precio INTEGER;
as_descuento INTEGER;
as_ocurrencia VARCHAR2(30);
proveedor_nombre VARCHAR2(30);
empresa_aliada_nombre VARCHAR2(30);
estado_nombre VARCHAR2(30);
CURSOR cursor_id_contratos
    IS (
        SELECT c.id
        INTO contratos_id
        FROM contratos c
        WHERE c.rango_fecha.fecha_fin = today
    );
CURSOR cursor_id_lugar_dets_contrato (cur_contrato_id INTEGER)
    IS (
        SELECT *
        FROM det_contratos dc
        WHERE dc.id_contrato = cur_contrato_id
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('6. ------SIMULACIÓN RENOVACIÓN CONTRATOS-------');

    DBMS_OUTPUT.PUT_LINE('6.1 Buscando contratos que su fecha de finalización sea hoy...');

    /* 1. Se va contrato por contrato de los que se vencen hoy */
    OPEN cursor_id_contratos;
    LOOP
        FETCH cursor_id_contratos
        INTO contrato_id
        ;

        EXIT WHEN cursor_id_contratos%NOTFOUND;

        SELECT p.id, p.datos_empresa.nombre
        INTO proveedor_id, proveedor_nombre
        FROM proveedores p
        INNER JOIN contratos c
        ON c.id_proveedor = p.id
        WHERE c.id = contrato_id
        FETCH FIRST 1 ROWS ONLY
        ;

        SELECT ea.id, ea.datos_empresa.nombre
        INTO empresa_aliada_id, empresa_aliada_nombre
        FROM empresas_aliadas ea
        INNER JOIN contratos c
        ON c.id_empresa_aliada = ea.id
        WHERE c.id = contrato_id
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('6.2 El contrato activo entre '||proveedor_nombre||' y '||empresa_aliada_nombre||' vence hoy');
        /* 2. Rnadom: 0 si no se va a renovar y 1 si */
        random:= dbms_random.value(0,1);

        IF random = 1 THEN

            DBMS_OUTPUT.PUT_LINE('6.2.1 Procediendo a renovar este contrato...');

            SELECT cs.id, cs.precio, cs.n_envios, cs.ocurrencia, NVL(cs.descuento_renovado, 0)
            INTO acuerdo_servicio_id, as_precio, as_n_envios, as_ocurrencia, as_descuento
            FROM acuerdos_servicios cs
            INNER JOIN contratos c
            ON c.id_acuerdo_servicio = cs.id
            WHERE c.id = contrato_id
            FETCH FIRST 1 ROWS ONLY
            ;


            fecha_fin:= dbms_random.value(2,8);
            /* 3. Se crea el contrato nuevo */
            INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha)
                VALUES (
                    secuencia_contratos.nextval,
                    proveedor_id,
                    empresa_aliada_id,
                    acuerdo_servicio_id,
                    rango_fecha(
                        today,
                        ADD_MONTHS(today, fecha_fin)
                    )
                )
            ;

            SELECT c.id
            INTO contrato_nuevo_id
            FROM contratos c
            WHERE NOT EXISTS (
                SELECT *
                FROM det_contratos dc
                WHERE dc.id_contrato = c.id
            )
            FETCH FIRST 1 ROWS ONLY
            ;

            DBMS_OUTPUT.PUT_LINE('6.2.2 Detalles del nuevo contrato:');
            DBMS_OUTPUT.PUT_LINE('    ID: '||contrato_nuevo_id);
            DBMS_OUTPUT.PUT_LINE('    Fecha de inicio: '||today);
            DBMS_OUTPUT.PUT_LINE('    Fecha de fin: '|| ADD_MONTHS(today, fecha_fin));
            DBMS_OUTPUT.PUT_LINE('    Cantidad de envios: '||as_n_envios);
            DBMS_OUTPUT.PUT_LINE('    Ocurrencia: '||as_ocurrencia);
            DBMS_OUTPUT.PUT_LINE('    Precio: '||as_precio||'$');
            DBMS_OUTPUT.PUT_LINE('    Con un descuento del: '||as_descuento||'%');
            DBMS_OUTPUT.PUT_LINE('    Lugares donde aplica:');

            /* 4. Se hace un loop por cada uno de los lugares donde aplicaba el contrato vencido para crear el dc del nuevo contrato */
            FOR id_lugar_det_contrato IN cursor_id_lugar_dets_contrato(contrato_id)
            LOOP

                SELECT e.nombre
                INTO estado_nombre
                FROM lugares e
                WHERE e.id = id_lugar_det_contrato.id_lugar
                ;

                INSERT INTO det_contratos VALUES(contrato_nuevo_id,id_lugar_det_contrato.id_lugar);

                DBMS_OUTPUT.PUT_LINE('      * '||estado_nombre);

            END LOOP;


        ELSE
            DBMS_OUTPUT.PUT_LINE('6.2.1 Se ha decidido no renovar este contrato');
        END IF;

        IF cursor_id_contratos%NOTFOUND THEN
            DBMS_OUTPUT.PUT_LINE('6.2 Ya no existen mas contratos con fecha de vencimiento para hoy');
        END IF;

    END LOOP;
    CLOSE cursor_id_contratos;


    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN RENOVACIÓN DE CONTRATOS-------');

END;
/


--TODO: ver si acuerdo se servicio esta activo
--TODO fehca finalizacion acuerdo de servicio y contrato NULL
--TODO: Que pasa si no hay nada por renovar
