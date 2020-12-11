---SIMULACION CREAR PEDIDOS

CREATE OR REPLACE PROCEDURE crear_pedidos( today DATE )
IS
proveedor_id INTEGER;
usuario_id INTEGER;
empresa_aliada_id INTEGER;
contrato_id INTEGER;
cantidad_pedidos_realizados INTEGER;
numero_envios_acs INTEGER;
sucursal_id INTEGER;
cantidad_productos INTEGER;
cantidad_unidades INTEGER;
contador_productos INTEGER;
nuevo_pedido_id INTEGER;
cantidad_sucursales INTEGER;
producto_flag INTEGER;
proveedor_nombre VARCHAR2(30);
empresa_aliada_nombre VARCHAR2(30);
usuario_nombre VARCHAR2(30);
usuario_apellido VARCHAR2(30);
ocurrencia_contrato VARCHAR2(30);
fecha_inicio DATE;
fecha_fin DATE;
usuario USUARIOS%ROWTYPE;
usuario_direccion DIRECCIONES%ROWTYPE;
producto PRODUCTOS%ROWTYPE;
lugar_sucursal LUGARES%ROWTYPE;
usuario_lugar LUGARES%ROWTYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('7. ------SIMULACIÓN CREAR PEDIDOS-------');

    SELECT p.id, p.datos_empresa.nombre, u.cedula, u.primer_nombre, u.primer_apellido
    INTO proveedor_id, proveedor_nombre, usuario_id, usuario_nombre, usuario_apellido
    FROM registros r
    INNER JOIN proveedores p
    ON r.id_proveedor = p.id
    INNER JOIN usuarios u
    ON r.id_usuario = u.cedula
    ORDER BY DBMS_RANDOM.RANDOM
    FETCH FIRST 1 ROWS ONLY
    ;


    SELECT ea.id, ea.datos_empresa.nombre, c.id, cs.ocurrencia, cs.n_envios
    INTO empresa_aliada_id, empresa_aliada_nombre, contrato_id, ocurrencia_contrato, numero_envios_acs
    FROM contratos c
    INNER JOIN empresas_aliadas ea
    ON c.id_empresa_aliada = ea.id
    INNER JOIN acuerdos_servicios cs
    ON c.id_acuerdo_servicio = cs.id
    WHERE c.id_proveedor = proveedor_id
    AND today
        BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
    FETCH FIRST 1 ROWS ONLY
    ;

    DBMS_OUTPUT.PUT_LINE('7.1 El usuario de la app '||proveedor_nombre||', '||usuario_nombre||' '||usuario_apellido||' procede a crear un pedido a la empresa '||empresa_aliada_nombre);

    IF ocurrencia_contrato = 'semanal' THEN

        SELECT trunc(today,'iw')
        INTO fecha_inicio
        FROM DUAL;

        SELECT COUNT(*)
        INTO cantidad_pedidos_realizados
        FROM pedidos p
        INNER JOIN sucursales s
        ON p.id_sucursal = s.id
        INNER JOIN empresas_aliadas ea
        ON ea.id = s.id_empresa_aliada
        WHERE ea.id = empresa_aliada_id
        AND p.fecha_realizado.fecha_inicio BETWEEN fecha_inicio AND today
        ;

    ELSIF ocurrencia_contrato = 'mensual' THEN

        SELECT TRUNC(today, 'MONTH')
        INTO fecha_inicio
        FROM dual;

        SELECT COUNT(*)
        INTO cantidad_pedidos_realizados
        FROM pedidos p
        INNER JOIN sucursales s
        ON p.id_sucursal = s.id
        INNER JOIN empresas_aliadas ea
        ON ea.id = s.id_empresa_aliada
        WHERE ea.id = empresa_aliada_id
        AND p.fecha_realizado.fecha_inicio BETWEEN fecha_inicio AND fecha_fin
        ;

    ELSE

        SELECT TRUNC(today, 'YEAR')
        INTO fecha_inicio
        FROM dual;

        SELECT COUNT(*)
        INTO cantidad_pedidos_realizados
        FROM pedidos p
        INNER JOIN sucursales s
        ON p.id_sucursal = s.id
        INNER JOIN empresas_aliadas ea
        ON ea.id = s.id_empresa_aliada
        WHERE ea.id = empresa_aliada_id
        AND p.fecha_realizado.fecha_inicio BETWEEN fecha_inicio AND fecha_fin
        ;

    END IF;

    IF cantidad_pedidos_realizados > numero_envios_acs THEN
        DBMS_OUTPUT.PUT_LINE('7.2 El cupo de la relación comercial entre este proveedor y esta empresa aliada ya ha sido sobrepasado');
        RETURN;
    ELSE

        SELECT d.*
        INTO usuario_direccion
        FROM direcciones d
        WHERE d.id_usuario = usuario_id
        ORDER BY DBMS_RANDOM.RANDOM
        FETCH FIRST 1 ROWS ONLY
        ;

        SELECT l.*
        INTO usuario_lugar
        FROM lugares l
        WHERE l.id = usuario_direccion.id_lugar;

        DBMS_OUTPUT.PUT_LINE('7.2 La zona de envio destino de este pedido es '|| usuario_lugar.nombre);

        SELECT COUNT (s.id)
        INTO cantidad_sucursales
        FROM sucursales s
        INNER JOIN lugares z
        ON z.id = s.id_lugar
        WHERE s.id_empresa_aliada = empresa_aliada_id
        AND z.id = usuario_direccion.id_lugar
        ;

        sucursal_id:= -1;

        IF cantidad_sucursales > 0 THEN
            SELECT s.id
            INTO sucursal_id
            FROM sucursales s
            INNER JOIN lugares z
            ON z.id = s.id_lugar
            WHERE s.id_empresa_aliada = empresa_aliada_id
            AND z.id = usuario_direccion.id_lugar
            FETCH FIRST 1 ROWS ONLY
            ;
        END IF;


        IF sucursal_id = -1 THEN

            SELECT COUNT (s.id)
            INTO cantidad_sucursales
            FROM sucursales s
            INNER JOIN lugares z
            ON z.id = s.id_lugar
            INNER JOIN lugares m
            ON m.id = z.id_pertenece
            INNER JOIN lugares ul
            ON ul.id = usuario_direccion.id_lugar
            WHERE s.id_empresa_aliada = empresa_aliada_id
            AND ul.id_pertenece = m.id;

            IF cantidad_sucursales > 0 THEN

                SELECT s.id
                INTO sucursal_id
                FROM sucursales s
                INNER JOIN lugares z
                ON z.id = s.id_lugar
                INNER JOIN lugares m
                ON m.id = z.id_pertenece
                INNER JOIN lugares ul
                ON ul.id = usuario_direccion.id_lugar
                WHERE s.id_empresa_aliada = empresa_aliada_id
                AND ul.id_pertenece = m.id
                FETCH FIRST 1 ROWS ONLY
                ;
            END IF;
        END IF;



        IF sucursal_id = -1 THEN

            SELECT COUNT (s.id)
            INTO cantidad_sucursales
            FROM sucursales s
            INNER JOIN lugares z
            ON z.id = s.id_lugar
            INNER JOIN lugares m
            ON m.id = z.id_pertenece
            INNER JOIN lugares e
            ON e.id = m.id_pertenece
            WHERE s.id_empresa_aliada = empresa_aliada_id
            ;

            IF cantidad_sucursales > 0 THEN

                SELECT s.id
                INTO sucursal_id
                FROM sucursales s
                INNER JOIN lugares z
                ON z.id = s.id_lugar
                INNER JOIN lugares m
                ON m.id = z.id_pertenece
                INNER JOIN lugares e
                ON e.id = m.id_pertenece
                WHERE s.id_empresa_aliada = empresa_aliada_id
                FETCH FIRST 1 ROWS ONLY
                ;

            END IF;



        END IF;


        IF sucursal_id = -1 THEN
            DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');
            RETURN;
        END IF;

        SELECT *
        INTO lugar_sucursal
        FROM lugares
        WHERE id = sucursal_id
        ;



        DBMS_OUTPUT.PUT_LINE('7.3 Se crea un pedido a la sucursal '||sucursal_id||' de '||lugar_sucursal.nombre||' de la empresa '||empresa_aliada_nombre);

        INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION)
        VALUES (
            secuencia_pedidos.nextval,
            sucursal_id,
            proveedor_id,
            usuario_direccion.id,
            RANGO_FECHA(today,null),
            'recibido',
            null
        );

        SELECT p.id
        INTO nuevo_pedido_id
        FROM pedidos p
        WHERE NOT EXISTS (
            SELECT *
            FROM p_p
            WHERE id_pedido = p.id
        )
        FETCH FIRST 1 ROWS ONLY
        ;

        cantidad_productos:= dbms_random.value(1,15);
        contador_productos:= 1;

        DBMS_OUTPUT.PUT_LINE('7.4 El pedido contará con: ');

        WHILE contador_productos <= cantidad_productos
        LOOP

            SELECT COUNT(p.id)
            INTO producto_flag
            FROM productos p
            WHERE NOT EXISTS (
                SELECT *
                FROM p_p
                WHERE id_producto = p.id
                AND id_pedido = nuevo_pedido_id
            )
            AND p.id_empresa_aliada = empresa_aliada_id
            ORDER BY DBMS_RANDOM.RANDOM;


            IF producto_flag > 0 THEN

                SELECT p.*
                INTO producto
                FROM productos p
                WHERE NOT EXISTS (
                    SELECT *
                    FROM p_p
                    WHERE id_producto = p.id
                    AND id_pedido = nuevo_pedido_id
                )
                AND p.id_empresa_aliada = empresa_aliada_id
                ORDER BY DBMS_RANDOM.RANDOM
                FETCH FIRST 1 ROWS ONLY;

                cantidad_unidades:= dbms_random.value(1,15);

                INSERT INTO p_p (cantidad, id_producto, id_pedido)
                VALUES (
                    cantidad_unidades,
                    producto.id,
                    nuevo_pedido_id
                );

                DBMS_OUTPUT.PUT_LINE('   * '||cantidad_unidades||' '||producto.nombre);

            END IF;



            contador_productos:= contador_productos+1;
        END LOOP;

    END IF;

    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN CREAR PEDIDOS-------');

   exception
    when no_data_found then
       DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');

END;
/
