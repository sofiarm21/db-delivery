---SIMULACION ASIGNACIÓN PEDIDOS A TRASNPORTES

---today debe tener hora minutos y segundos

CREATE OR REPLACE PROCEDURE asignacion_pedidos_transportes( today DATE )
IS
conteo_pedidos INTEGER;
transportes_disponibles INTEGER;
id_nuevo_lote INTEGER;
lote_pedido_id INTEGER;
lotes_disponibles INTEGER;
hora_estimada_salida DATE;
pedido_a_asignar PEDIDOS%ROWTYPE;
direccion_usuario DIRECCIONES%ROWTYPE;
sede_pedido SEDES%ROWTYPE;
proveedor_pedido PROVEEDORES%ROWTYPE;
usuario_pedido USUARIOS%ROWTYPE;
lugar_sede LUGARES%ROWTYPE;
lote_posible LOTES%ROWTYPE;
lote_pedido LOTES%ROWTYPE;
transporte_lote TRANSPORTES%ROWTYPE;
posible_transporte TRANSPORTES%ROWTYPE;
lote_pedido_usuario L_P%ROWTYPE;
CURSOR cursor_pedidos_asignar
    IS (
        SELECT p.*
        FROM pedidos p
        WHERE NOT EXISTS (
            SELECT lp.*
            FROM l_p lp
            WHERE lp.id_pedido = p.id
        )
    );
CURSOR cursor_lotes_posibles (sede_id INTEGER)
    IS (
        SELECT l.*
        FROM lotes l
        WHERE l.fecha_creacion.fecha_fin IS NULL
        AND l.id_sede = sede_id
    );
CURSOR transportes_listos (sede_id INTEGER)
    IS (
        SELECT t.*
        FROM transportes t
        WHERE NOT EXISTS (
            SELECT l.*
            FROM lotes l
            WHERE l.entregado = 0
            AND l.id_transporte = t.placa
        )
        AND t.id_sede = sede_id
        AND t.estado = 'activo'
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('8. ------SIMULACIÓN ASIGNACIÓN PEDIDOS A TRASNPORTES-------');

    DBMS_OUTPUT.PUT_LINE('8.1 Buscando los pedidos que se han creado...');

    OPEN cursor_pedidos_asignar;
    LOOP
        FETCH cursor_pedidos_asignar
        INTO pedido_a_asignar;

        EXIT WHEN cursor_pedidos_asignar%NOTFOUND;

        /*Seleccionar direccion del pedido*/

        SELECT d.*
        INTO direccion_usuario
        FROM direcciones d
        WHERE d.id = pedido_a_asignar.id_direccion
         FETCH FIRST 1 ROWS ONLY
        ;

        /*Seleccionar usuario al que le corresponde el pedido*/

        SELECT u.*
        INTO usuario_pedido
        FROM usuarios u
        WHERE u.cedula = direccion_usuario.id_usuario
         FETCH FIRST 1 ROWS ONLY
        ;

        /*Seleccionar proveedor del pedido*/

        SELECT p.*
        INTO proveedor_pedido
        FROM proveedores p
        INNER JOIN pedidos s
        ON s.id_proveedor = p.id
        WHERE s.id_direccion = direccion_usuario.id
         FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('8.2 Hay un pedido nuevo del usuario '||usuario_pedido.primer_nombre||' '||usuario_pedido.primer_apellido||' desde la aplicación de delivery '||proveedor_pedido.datos_empresa.nombre);

        /*Seleccionar sede*/

        SELECT s.id, l.id, l.nombre
        INTO sede_pedido.id, lugar_sede.id, lugar_sede.nombre
        FROM sedes s
        INNER JOIN s_l sl
        ON sl.id_sede = s.id
        INNER JOIN lugares l
        ON sl.id_lugar = l.id
        WHERE s.id_proveedor = proveedor_pedido.id
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('8.3 La sede '||sede_pedido.id||' de '||lugar_sede.nombre||' se encargará de distribuir este pedido');

        /*Buscar lote*/
        DBMS_OUTPUT.PUT_LINE('8.4 Buscando un lote donde añadir este pedido...');

        lote_pedido_id:= -10;

        /*Seleccionar lote sin fecha de salida de esa sede*/

        SELECT COUNT(l.id)
        INTO lotes_disponibles
        FROM lotes l
        WHERE l.fecha_creacion.fecha_fin IS NULL
        AND l.id_sede = sede_pedido.id;

        DBMS_OUTPUT.PUT_LINE('lotes_disponibles del proveedor = '||lotes_disponibles);

        FOR lote_posible IN cursor_lotes_posibles(sede_pedido.id)
        LOOP

            /*Seleccionar lote que no este lleno*/

            SELECT COUNT(lp.id_pedido)
            INTO conteo_pedidos
            FROM lotes l
            INNER JOIN l_p lp
            ON lp.id_lote = l.id
            AND l.id = lote_posible.id
            ;

            SELECT t.*
            INTO transporte_lote
            FROM transportes t
            WHERE lote_posible.id_transporte = t.placa
            ;

            IF transporte_lote.tipo = 'bicicleta' AND conteo_pedidos = 0 THEN

                INSERT INTO l_p (id, id_lote, id_pedido, orden, recogido)
                VALUES (
                    secuencia_l_p.nextval,
                    lote_posible.id,
                    pedido_a_asignar.id,
                    1,
                    0
                );

                lote_pedido:= lote_posible;
                lote_pedido_id:= lote_posible.id;

            ELSIF transporte_lote.tipo = 'moto' AND conteo_pedidos < 2 THEN

                INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO)
                VALUES (
                    SECUENCIA_L_P.nextval,
                    lote_posible.id,
                    pedido_a_asignar.id,
                    conteo_pedidos + 1,
                    0
                );
                lote_pedido:= lote_posible;
                 lote_pedido_id:= lote_posible.id;

            ELSIF transporte_lote.tipo = 'carro' AND conteo_pedidos < 4 THEN

                INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO)
                VALUES (
                    SECUENCIA_L_P.nextval,
                    lote_posible.id,
                    pedido_a_asignar.id,
                    conteo_pedidos + 1,
                    0
                );
                lote_pedido:= lote_posible;
                 lote_pedido_id:= lote_posible.id;

            ELSIF transporte_lote.tipo = 'camioneta' AND conteo_pedidos < 4 THEN

                INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO)
                VALUES (
                    SECUENCIA_L_P.nextval,
                    lote_posible.id,
                    pedido_a_asignar.id,
                    conteo_pedidos + 1,
                    0
                );
                lote_pedido:= lote_posible;

                UPDATE pedidos p
                SET p.status = 'en curso'
                WHERE p.id = pedido_a_asignar.id;

            END IF;

            IF lote_pedido_id <> -10 THEN

                SELECT lp.*
                INTO lote_pedido_usuario
                FROM l_p lp
                WHERE lp.id_pedido = pedido_a_asignar.id
                AND lp.id_lote = lote_pedido.id
                FETCH FIRST 1 ROWS ONLY
                ;

                SELECT l.fecha_creacion.fecha_inicio + (1/1440*20)
                INTO hora_estimada_salida
                FROM lotes l
                INNER JOIN l_p lp
                ON lp.id_lote = l.id
                AND lp.id_pedido = lote_pedido_usuario.id_pedido
                FETCH FIRST 1 ROWS ONLY
                ;

                DBMS_OUTPUT.PUT_LINE('8.5 Se ha asignado el pedido al lote de id '||lote_pedido.id|| ' en el puesto de despacho #'||lote_pedido_usuario.orden);
                DBMS_OUTPUT.PUT_LINE('8.6 Detalles del lote:');
                DBMS_OUTPUT.PUT_LINE('    * Lote perteneciente al proveedor: '||proveedor_pedido.datos_empresa.nombre);
                DBMS_OUTPUT.PUT_LINE('    * Sale desde la sede de id: '||sede_pedido.id);
                DBMS_OUTPUT.PUT_LINE('    * Sale desde la zona: '||lugar_sede.nombre);
                DBMS_OUTPUT.PUT_LINE('    * En el transporte de placa: '||transporte_lote.placa);
                DBMS_OUTPUT.PUT_LINE('    * Tipo de transporte: '||transporte_lote.tipo);
                DBMS_OUTPUT.PUT_LINE('    * Estado del trasnporte: '||transporte_lote.estado);
                DBMS_OUTPUT.PUT_LINE('    * Hora de creación del lote: '||lote_pedido.fecha_creacion.fecha_inicio);
                DBMS_OUTPUT.PUT_LINE('    * Hora estimada de salida del transporte: '||hora_estimada_salida);
                EXIT;
            END IF;

        END LOOP;

        IF lote_pedido_id = -10 THEN

            /*No se encontro ningun lote abierto asi que se procede a seleccionar un trasnporte y a crear uno*/

            DBMS_OUTPUT.PUT_LINE('8.5 Este proveedor no tiene lotes abiertos, procediendo a buscar transportes disponibles...');

            /*Se buscan transportes activos que esten en la sede*/

            SELECT COUNT (t.placa)
            INTO transportes_disponibles
            FROM transportes t
            WHERE NOT EXISTS (
                SELECT l.*
                FROM lotes l
                WHERE l.entregado = 0
                AND l.id_transporte = t.placa
            )
            AND t.id_sede = sede_pedido.id
            AND t.estado = 'activo'
            FETCH FIRST 1 ROWS ONLY
            ;

            IF transportes_disponibles <> 0 THEN

                SELECT t.*
                INTO transporte_lote
                FROM transportes t
                WHERE NOT EXISTS (
                    SELECT l.*
                    FROM lotes l
                    WHERE l.entregado = 0
                    AND l.id_transporte = t.placa
                )
                AND t.id_sede = sede_pedido.id
                AND t.estado = 'activo'
                FETCH FIRST 1 ROWS ONLY
                ;

                /*Se crea nuevo lote */

                INSERT INTO lotes (id, id_transporte, id_sede, entregado, fecha_creacion)
                    VALUES (
                        secuencia_lotes.nextval,
                        transporte_lote.placa,
                        sede_pedido.id,
                        0,
                        RANGO_FECHA(today, NULL)
                    );

                SELECT secuencia_lotes.CURRVAL
                INTO id_nuevo_lote
                FROM DUAL;

                SELECT l.*
                INTO lote_pedido
                FROM lotes l
                WHERE l.id = id_nuevo_lote
                FETCH FIRST 1 ROWS ONLY
                ;

                INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO)
                VALUES (
                    secuencia_l_p.nextval,
                    id_nuevo_lote,
                    pedido_a_asignar.id,
                    1,
                    0
                );

                SELECT lp.*
                INTO lote_pedido_usuario
                FROM l_p lp
                WHERE lp.id_pedido = pedido_a_asignar.id
                AND lp.id_lote = lote_pedido.id
                FETCH FIRST 1 ROWS ONLY
                ;

                SELECT l.fecha_creacion.fecha_inicio + (1/1440*20)
                INTO hora_estimada_salida
                FROM lotes l
                INNER JOIN l_p lp
                ON lp.id_lote = l.id
                AND lp.id_pedido = lote_pedido_usuario.id_pedido
                FETCH FIRST 1 ROWS ONLY
                ;

                DBMS_OUTPUT.PUT_LINE('8.6 Se ha asignado el pedido al lote de id '||lote_pedido.id|| ' en el puesto de despacho #'||lote_pedido_usuario.orden);
                DBMS_OUTPUT.PUT_LINE('8.7 Detalles del lote:');
                DBMS_OUTPUT.PUT_LINE('    * Lote perteneciente al proveedor: '||proveedor_pedido.datos_empresa.nombre);
                DBMS_OUTPUT.PUT_LINE('    * Sale desde la sede de id: '||sede_pedido.id);
                DBMS_OUTPUT.PUT_LINE('    * Sale desdel municipio: '||lugar_sede.nombre);
                DBMS_OUTPUT.PUT_LINE('    * En el transporte de placa: '||transporte_lote.placa);
                DBMS_OUTPUT.PUT_LINE('    * Tipo de transporte: '||transporte_lote.tipo);
                DBMS_OUTPUT.PUT_LINE('    * Estado del trasnporte: '||transporte_lote.estado);
                DBMS_OUTPUT.PUT_LINE('    * Hora de creación del lote: '||lote_pedido.fecha_creacion.fecha_inicio);
                DBMS_OUTPUT.PUT_LINE('    * Hora estimada de salida del transporte: '||hora_estimada_salida);

            ELSE

                DBMS_OUTPUT.PUT_LINE('8.6 No es posible procesar la solicitud en estos momentos');

            END IF;

        END IF;

        DBMS_OUTPUT.PUT_LINE('......');
        DBMS_OUTPUT.PUT_LINE('Siguiente pedido a procesar...');
        DBMS_OUTPUT.PUT_LINE('......');

    END LOOP;


    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN ASIGNACIÓN PEDIDOS A TRASNPORTES-------');

   exception
    when no_data_found then
       DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');

END;
/
