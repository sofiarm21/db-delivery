---SIMULACION DESPACHAR PEDIDOS


CREATE OR REPLACE PROCEDURE despachar_pedidos( today DATE )
IS
tiempo_estimado INTEGER;
latitud_proxima NUMBER;
longitud_proxima NUMBER;
latitud_actual NUMBER;
longitud_actual NUMBER;
tiempo_total NUMBER;
contador_prox_pedido INTEGER;
fecha_inicio_pedido DATE;
hora_llegada DATE;
lote_pedido_ultimo L_P%ROWTYPE;
producto PRODUCTOS%ROWTYPE;
sede_lote SEDES%ROWTYPE;
lugar_sede LUGARES%ROWTYPE;
proveedor_lote PROVEEDORES%ROWTYPE;
lote_pedido l_p%ROWTYPE;
usuario_lote USUARIOS%ROWTYPE;
ubicacion_usuario DIRECCIONES%ROWTYPE;
lugar_usuario LUGARES%ROWTYPE;
empresa_aliada EMPRESAS_ALIADAS%ROWTYPE;
sucursal SUCURSALES%ROWTYPE;
lugar_sucursal LUGARES%ROWTYPE;
transporte TRANSPORTES%ROWTYPE;
CURSOR cursor_lotes_despachar
    IS (
        SELECT l.*
        FROM lotes l
        WHERE l.fecha_creacion.fecha_fin IS NULL
    );
CURSOR cursor_pedidos_lote (lote_id INTEGER)
    IS (
        SELECT *
        FROM (
            SELECT p.*
            FROM l_p lp
            INNER JOIN pedidos p
            ON lp.id_pedido = p.id
            WHERE lp.id_lote = lote_id
            ORDER BY lp.orden ASC
        )
    );
CURSOR cursor_productos_pedido (pedido_id INTEGER)
    IS (
        SELECT pp.*
        FROM p_p pp
        INNER JOIN pedidos p
        ON pp.id_pedido = p.id
        WHERE p.id = pedido_id
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('9. ------SIMULACIÓN DESPACHAR PEDIDOS-------');

    FOR lote_despachar IN cursor_lotes_despachar
    LOOP

        tiempo_total:= 0;

        UPDATE lotes l
        SET l.fecha_creacion.fecha_fin = today
        WHERE l.id = lote_despachar.id
        ;

        SELECT s.*
        INTO sede_lote
        FROM sedes s
        WHERE lote_despachar.id_sede = s.id
        ;

        SELECT l.*
        INTO lugar_sede
        FROM lugares l
        INNER JOIN s_l sl
        ON sl.id_lugar = l.id
        AND sl.pertenece = 1
        WHERE sl.id_sede = sede_lote.id
        ;

        SELECT p.*
        INTO proveedor_lote
        FROM proveedores p
        INNER JOIN sedes s
        ON s.id_proveedor = p.id
        WHERE s.id = sede_lote.id
        ;

        SELECT t.*
        INTO transporte
        FROM transportes t
        WHERE lote_despachar.id_transporte = t.placa
        ;

        DBMS_OUTPUT.PUT_LINE('9.1 El lote con id '||lote_despachar.id||' de la empresa de delivery '||proveedor_lote.datos_empresa.nombre||' esta saliendo desde la sede '||sede_lote.id||' ubicada en la zona '||lugar_sede.nombre);
        DBMS_OUTPUT.PUT_LINE('    Hora de salida: '||today);
        DBMS_OUTPUT.PUT_LINE('    Vehiculo: '||transporte.tipo||' con placa '||transporte.placa);
        DBMS_OUTPUT.PUT_LINE('    Descripción del lote:');

        ----descripcion del lote---
        FOR  pedido_lote IN cursor_pedidos_lote(lote_despachar.id)
        LOOP

            SELECT lp.*
            INTO lote_pedido
            FROM l_p lp
            WHERE lp.id_pedido = pedido_lote.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT d.*
            INTO ubicacion_usuario
            FROM direcciones d
            WHERE pedido_lote.id_direccion = d.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT u.*
            INTO usuario_lote
            FROM usuarios u
            WHERE u.cedula = ubicacion_usuario.id_usuario
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT l.*
            INTO lugar_usuario
            FROM lugares l
            WHERE l.id = ubicacion_usuario.id_lugar
            FETCH FIRST 1 ROW ONLY
            ;

            DBMS_OUTPUT.PUT_LINE('      Pedido #'||lote_pedido.orden);
            DBMS_OUTPUT.PUT_LINE('          Perteneciente al usuario: '||usuario_lote.primer_nombre||' '||usuario_lote.primer_apellido);
            DBMS_OUTPUT.PUT_LINE('          Sitio de despacho: '||lugar_usuario.nombre);
            DBMS_OUTPUT.PUT_LINE('          Ubicación de despacho: ('||ubicacion_usuario.ubicacion_exacta.latitud|| ', '||ubicacion_usuario.ubicacion_exacta.longitud||')');
            DBMS_OUTPUT.PUT_LINE('          Calle: '||ubicacion_usuario.calle);
            DBMS_OUTPUT.PUT_LINE('          Pto. referencia: '||ubicacion_usuario.lugar_referencia);
            DBMS_OUTPUT.PUT_LINE('          Productos:');

            FOR producto_pedido IN cursor_productos_pedido(pedido_lote.id)
            LOOP

                SELECT p.*
                INTO producto
                FROM productos p
                WHERE p.id = producto_pedido.id_producto
                FETCH FIRST 1 ROW ONLY
                ;

                DBMS_OUTPUT.PUT_LINE('          * '||producto_pedido.cantidad||' '||producto.nombre);

            END LOOP;

            UPDATE pedidos p
            SET p.status = 'despachado'
            WHERE p.id = pedido_lote.id
            ;

            INSERT INTO trackings(id, id_pedido, ubicacion_exacta)
                VALUES (
                    secuencia_trackings.nextval,
                    pedido_lote.id,
                    ubicacion(sede_lote.ubicacion.latitud, sede_lote.ubicacion.longitud)
                );

        END LOOP;

        --moviendonos a las sucursales---
        FOR pedido_lote IN cursor_pedidos_lote(lote_despachar.id)
        LOOP

            SELECT ea.*
            INTO empresa_aliada
            FROM empresas_aliadas ea
            INNER JOIN sucursales s
            ON s.id_empresa_aliada = ea.id
            INNER JOIN pedidos p
            ON p.id_sucursal = s.id
            WHERE p.id = pedido_lote.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT s.*
            INTO sucursal
            FROM sucursales s
            WHERE pedido_lote.id_sucursal = s.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT l.*
            INTO lugar_sucursal
            FROM lugares l
            WHERE l.id = sucursal.id_lugar
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT lp.*
            INTO lote_pedido
            FROM l_p lp
            WHERE lp.id_pedido = pedido_lote.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT COUNT(lp.id)
            INTO contador_prox_pedido
            FROM l_p lp
            WHERE lp.id_lote = lote_pedido.id
            AND lp.orden = lote_pedido.orden + 1
            ;

            ---Calculando tiempo---
            ----Si estas en la ultima sucursal---


            IF  contador_prox_pedido = 0 THEN

                SELECT d.ubicacion_exacta.latitud, d.ubicacion_exacta.longitud
                INTO latitud_proxima, longitud_proxima
                FROM direcciones d
                INNER JOIN pedidos p
                ON p.id_direccion = d.id
                INNER JOIN sucursales s
                ON s.id = p.id_sucursal
                WHERE p.id = pedido_lote.id
                FETCH FIRST 1 ROW ONLY
                ;


                tiempo_estimado:=0;

                IF lote_pedido.orden = 1 THEN

                    ----Si estas en la sede ---
                    SELECT s.ubicacion.latitud, s.ubicacion.longitud
                    INTO latitud_actual, longitud_actual
                    FROM sedes s
                    WHERE sede_lote.id = s.id
                    FETCH FIRST 1 ROW ONLY
                    ;

                ELSE

                    ----Si estas en una sucursal ---
                    SELECT s.ubicacion.latitud, s.ubicacion.longitud
                    INTO latitud_actual, longitud_actual
                    FROM sucursales s
                    WHERE sucursal.id = s.id
                    FETCH FIRST 1 ROW ONLY
                    ;

                END IF;

                lote_pedido_ultimo:= lote_pedido;

            ELSE

                SELECT s.ubicacion.latitud, s.ubicacion.longitud
                INTO latitud_proxima, longitud_proxima
                FROM sucursales s
                INNER JOIN pedidos p
                ON p.id_sucursal = s.id
                INNER JOIN l_p lp
                ON lp.id_lote = lote_pedido.id
                AND lp.orden = lote_pedido.orden + 1
                FETCH FIRST 1 ROW ONLY
                ;

                IF lote_pedido.orden <> 1 THEN

                    SELECT s.ubicacion.latitud, s.ubicacion.longitud
                    INTO latitud_actual, longitud_actual
                    FROM sucursales s
                    INNER JOIN pedidos p
                    ON p.id_sucursal = s.id
                    INNER JOIN l_p lp
                    ON lp.id_lote = lote_pedido.id
                    AND lp.orden = lote_pedido.orden
                    FETCH FIRST 1 ROW ONLY
                    ;

                ELSE

                    ----Si estas en la sede ---
                    SELECT s.ubicacion.latitud, s.ubicacion.longitud
                    INTO latitud_actual, longitud_actual
                    FROM sedes s
                    WHERE sede_lote.id = s.id
                    FETCH FIRST 1 ROW ONLY
                    ;

                END IF;

            END IF;

            IF transporte.tipo = 'bicicleta' THEN
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 15;
            ELSIF transporte.tipo = 'moto' THEN
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 40;
            ELSE
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 80;
            END IF;

            tiempo_estimado:= tiempo_estimado + dbms_random.value(10,20);
            tiempo_total:= tiempo_total + tiempo_estimado;

            IF lote_pedido.recogido = 0 THEN

                DBMS_OUTPUT.PUT_LINE('9.1.1 Procediendo a recoger el pedido #'||lote_pedido.orden||'...');
                DBMS_OUTPUT.PUT_LINE('9.1.2 Nos dirigimos a la sucursal de id '||sucursal.id||' de la empresa '||empresa_aliada.datos_empresa.nombre||' ubicada en la zona '||lugar_sucursal.nombre);
                DBMS_OUTPUT.PUT_LINE('9.1.3 Tiempo estiado de llegada: '||tiempo_estimado||' minutos');
                --DBMS_OUTPUT.PUT_LINE('...moviendonos desde la ubicacion ('||latitud_actual||', '||longitud_actual||') a la ubicacion ('||latitud_proxima||', '||longitud_proxima||')...');
                DBMS_OUTPUT.PUT_LINE('...');
                DBMS_OUTPUT.PUT_LINE('9.1.4 El pedido ha sido recogido...');

                UPDATE l_p lp
                SET lp.recogido = 1
                WHERE lp.id_pedido = pedido_lote.id
                ;


            END IF;

        END LOOP;

        --moviendonos a los usuarios---
        FOR pedido_lote IN cursor_pedidos_lote(lote_despachar.id)
        LOOP

            SELECT lp.*
            INTO lote_pedido
            FROM l_p lp
            WHERE lp.id_pedido = pedido_lote.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT d.*
            INTO ubicacion_usuario
            FROM direcciones d
            WHERE pedido_lote.id_direccion = d.id
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT u.*
            INTO usuario_lote
            FROM usuarios u
            WHERE u.cedula = ubicacion_usuario.id_usuario
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT l.*
            INTO lugar_usuario
            FROM lugares l
            WHERE l.id = ubicacion_usuario.id_lugar
            FETCH FIRST 1 ROW ONLY
            ;

            SELECT COUNT(lp.id)
            INTO contador_prox_pedido
            FROM l_p lp
            WHERE lp.id_lote = lote_pedido.id
            AND lp.orden = lote_pedido.orden + 1
            ;


            ---Calculando tiempo---
            ----Si estas en la ultima ubicacion---
            IF  contador_prox_pedido = 0 THEN

                tiempo_estimado:= 0;

            ----Si vas a la primera ubicacion---
            ELSIF lote_pedido.orden = 1 THEN

                DBMS_OUTPUT.PUT_LINE('1');

                SELECT d.ubicacion_exacta.latitud, d.ubicacion_exacta.longitud
                INTO latitud_proxima, longitud_proxima
                FROM direcciones d
                INNER JOIN pedidos p
                ON p.id_direccion = d.id
                INNER JOIN l_p lp
                ON lp.id_pedido = p.id
                WHERE lote_pedido.id_pedido = lp.id_pedido
                AND lote_pedido.id_lote = lp.id_lote
                FETCH FIRST 1 ROW ONLY
                ;

            ELSE

                SELECT d.ubicacion_exacta.latitud, d.ubicacion_exacta.longitud
                INTO latitud_proxima, longitud_proxima
                FROM direcciones d
                INNER JOIN pedidos p
                ON p.id_direccion = d.id
                INNER JOIN l_p lp
                ON lp.id_pedido = p.id
                WHERE lp.id_lote = lote_pedido.id
                AND lp.orden = lote_pedido.orden + 1
                FETCH FIRST 1 ROW ONLY
                ;

            END IF;

            latitud_actual:= latitud_proxima;
            longitud_actual:= longitud_proxima;

            latitud_proxima:= latitud_proxima;
            longitud_proxima:= longitud_proxima;

            IF transporte.tipo = 'bicicleta' THEN
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 15;
            ELSIF transporte.tipo = 'moto' THEN
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 40;
            ELSE
                tiempo_estimado:= sqrt(power((latitud_proxima - latitud_actual),2) + power((longitud_proxima - longitud_actual),2)) / 80;
            END IF;

            tiempo_estimado:= tiempo_estimado * 60 + dbms_random.value(10,20);
            tiempo_total:= tiempo_total + tiempo_estimado;



            DBMS_OUTPUT.PUT_LINE('9.2.1 Procediendo a despachar el pedido #'||lote_pedido.orden||'...');
            DBMS_OUTPUT.PUT_LINE('9.2.3 Nos dirigimos a la la ubicacion del usuario de cedula '||usuario_lote.cedula||' con datos '||usuario_lote.primer_nombre||' '||usuario_lote.primer_apellido||' ubicada en la zona '||lugar_usuario.nombre);
            --DBMS_OUTPUT.PUT_LINE('...moviendonos desde la ubicacion ('||latitud_actual||', '||longitud_actual||') a la ubicacion ('||latitud_proxima||', '||longitud_proxima||')...');
            DBMS_OUTPUT.PUT_LINE('9.2.4 Tiempo estimdo de llegada: '||tiempo_estimado||' minutos');
            DBMS_OUTPUT.PUT_LINE('...');


            SELECT d.ubicacion_exacta.latitud, d.ubicacion_exacta.longitud
            INTO latitud_actual, longitud_actual
            FROM direcciones d
            INNER JOIN pedidos p
            ON p.id_direccion = pedido_lote.id_direccion
            FETCH FIRST 1 ROW ONLY
            ;

            UPDATE trackings t
            SET t.ubicacion_exacta = ubicacion(latitud_actual, longitud_actual)
            WHERE t.id_pedido = pedido_lote.id;

            SELECT p.fecha_realizado.fecha_inicio
            INTO fecha_inicio_pedido
            FROM pedidos p
            WHERE p.id = pedido_lote.id
            FETCH FIRST 1 ROW ONLY
            ;

            UPDATE pedidos p
            SET p.fecha_realizado.fecha_fin = fecha_inicio_pedido + (1/1440 * tiempo_total)
            WHERE p.id = pedido_lote.id
            ;

            SELECT p.fecha_realizado.fecha_fin
            INTO hora_llegada
            FROM pedidos p
            WHERE p.id = pedido_lote.id
            ;

            DBMS_OUTPUT.PUT_LINE('9.2.5 Hora de llegada: '||hora_llegada);

        END LOOP;

        DBMS_OUTPUT.PUT_LINE('.....');
        DBMS_OUTPUT.PUT_LINE('9.3 Ya se entregaron todos los pedidos del lote.');

        UPDATE lotes l
        SET l.entregado = 1
        WHERE l.id = lote_despachar.id
        ;

        DBMS_OUTPUT.PUT_LINE('9.4 El transporte vuelve a la sede para proximos pedidos...');
        DBMS_OUTPUT.PUT_LINE('.....');

    END LOOP;

    DBMS_OUTPUT.PUT_LINE('9.5 Todos los pedidos han sido despachados');

    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN DESPACHAR PEDIDOS-------');

   EXCEPTION
    WHEN no_data_found THEN
       DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');

END;
/
