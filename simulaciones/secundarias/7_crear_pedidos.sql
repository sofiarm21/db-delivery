---SIMULACION CREAR PEDIDOS

CREATE OR REPLACE PROCEDURE crear_pedidos( today DATE )
IS
cantidad_pedidos_realizados INTEGER;
nuevo_pedido_id INTEGER;
contador_productos INTEGER;
cantidad_productos INTEGER;
producto_flag INTEGER;
cantidad_unidades INTEGER;
cantidad_posible_empresas_aliadas INTEGER;
fecha_inicio DATE;
fecha_fin DATE;
producto PRODUCTOS%ROWTYPE;
usuario_pedido USUARIOS%ROWTYPE;
proveedor_pedido PROVEEDORES%ROWTYPE;
empresa_aliada_pedido EMPRESAS_ALIADAS%ROWTYPE;
direccion_usuario DIRECCIONES%ROWTYPE;
lugar_usuario LUGARES%ROWTYPE;
estado_usuario LUGARES%ROWTYPE;
empresa_aliada_posible EMPRESAS_ALIADAS%ROWTYPE;
sucursal_pedido SUCURSALES%ROWTYPE;
sucursal_zona LUGARES%ROWTYPE;
sucursal_municipio LUGARES%ROWTYPE;
contrato_relacion CONTRATOS%ROWTYPE;
acuerdo_servicio_relacion ACUERDOS_SERVICIOS%ROWTYPE;
CURSOR cursor_posibles_empresas_aliadas (proveedorId INTEGER, fecha DATE)
    IS (
        SELECT ea.*
        FROM empresas_aliadas ea
        INNER JOIN contratos c
        ON c.id_empresa_aliada = ea.id
        WHERE c.id_proveedor = proveedorId
        AND fecha BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('7. ------SIMULACIÓN CREAR PEDIDOS-------');

    SELECT u.*
    INTO usuario_pedido
    FROM usuarios u
    FETCH FIRST 1 ROW ONLY;

    SELECT *
    INTO proveedor_pedido
    FROM proveedores
    FETCH FIRST 1 ROW ONLY;


    SELECT u.cedula, u.primer_nombre, u.primer_apellido, p.id, p.datos_empresa.nombre
    INTO usuario_pedido.cedula, usuario_pedido.primer_nombre, usuario_pedido.primer_apellido, proveedor_pedido.id, proveedor_pedido.datos_empresa.nombre
    FROM usuarios u
    INNER JOIN registros r
    ON r.id_usuario = u.cedula
    INNER JOIN proveedores p
    ON p.id = r.id_proveedor
    ORDER BY DBMS_RANDOM.RANDOM
    FETCH FIRST 1 ROWS ONLY
    ;

    SELECT d.*
    INTO direccion_usuario
    FROM (
        SELECT *
        FROM direcciones
        ORDER BY dbms_random.value
    ) d
    WHERE d.id_usuario = usuario_pedido.cedula
    AND rownum = 1
    ;

    SELECT l.*
    INTO lugar_usuario
    FROM lugares l
    WHERE l.id = direccion_usuario.id_lugar
    ;

    SELECT e.*
    INTO estado_usuario
    FROM lugares l
    INNER JOIN lugares e
    ON e.id = l.id_pertenece
    WHERE l.id = lugar_usuario.id_pertenece
    ;


    FOR empresa_aliada_posible IN cursor_posibles_empresas_aliadas(proveedor_pedido.id, today)
    LOOP

        SELECT ea.*
        INTO empresa_aliada_pedido
        FROM empresas_aliadas ea
        INNER JOIN sucursales s
        ON s.id_empresa_aliada = ea.id
        WHERE ea.id = empresa_aliada_posible.id
        ORDER BY DBMS_RANDOM.RANDOM
        FETCH FIRST 1 ROWS ONLY
        ;

        IF empresa_aliada_pedido.id IS NOT NULL THEN

            SELECT s.id, l.id, l.nombre, m.id, m.nombre
            INTO sucursal_pedido.id, sucursal_zona.id, sucursal_zona.nombre, sucursal_municipio.id, sucursal_municipio.nombre
            FROM empresas_aliadas ea
            INNER JOIN sucursales s
            ON s.id_empresa_aliada = ea.id
            INNER JOIN lugares l
            ON s.id_lugar = l.id
            INNER JOIN lugares m
            ON l.id_pertenece = m.id
            INNER JOIN lugares e
            ON m.id_pertenece = e.id
            WHERE ea.id = empresa_aliada_pedido.id
            FETCH FIRST 1 ROWS ONLY
            ;



        END IF;

        IF empresa_aliada_pedido.id IS NOT NULL THEN
            EXIT;
        END IF;

    END LOOP;

    IF empresa_aliada_pedido.id IS NULL THEN
        RETURN;
    END IF;

    DBMS_OUTPUT.PUT_LINE('7.1 El usuario de la app '||proveedor_pedido.datos_empresa.nombre||', '||usuario_pedido.primer_nombre||' '||usuario_pedido.primer_apellido||' con cédula '||usuario_pedido.cedula||' procede a crear un pedido...');
    DBMS_OUTPUT.PUT_LINE('7.2 La orden va dirigida para la empresa aliada '||empresa_aliada_pedido.datos_empresa.nombre);
    DBMS_OUTPUT.PUT_LINE('7.3 La orden será registrada en el establecimiento de id '||sucursal_pedido.id||', ubicada en '||sucursal_zona.nombre||', '||sucursal_municipio.nombre);
    DBMS_OUTPUT.PUT_LINE('7.4 La ubicación del usuario es en la zona '||lugar_usuario.nombre||', ubicada en '||estado_usuario.nombre);


    SELECT c.*
    INTO contrato_relacion
    FROM contratos c
    WHERE c.id_proveedor = proveedor_pedido.id
    AND c.id_empresa_aliada = empresa_aliada_pedido.id
    AND today BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
    FETCH FIRST 1 ROWS ONLY
    ;


    SELECT acs.*
    INTO acuerdo_servicio_relacion
    FROM acuerdos_servicios acs
    WHERE acs.id = contrato_relacion.id_acuerdo_servicio
    FETCH FIRST 1 ROWS ONLY
    ;



    IF acuerdo_servicio_relacion.ocurrencia = 'semanal' THEN

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
        WHERE ea.id = empresa_aliada_pedido.id
        AND p.fecha_realizado.fecha_inicio BETWEEN fecha_inicio AND today
        ;

    ELSIF acuerdo_servicio_relacion.ocurrencia = 'mensual' THEN

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
        WHERE ea.id = empresa_aliada_pedido.id
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
        WHERE ea.id = empresa_aliada_pedido.id
        AND p.fecha_realizado.fecha_inicio BETWEEN fecha_inicio AND fecha_fin
        ;

    END IF;

    IF cantidad_pedidos_realizados >  acuerdo_servicio_relacion.n_envios THEN
        DBMS_OUTPUT.PUT_LINE('7.5 El cupo de la relación comercial entre este proveedor y esta empresa aliada ya ha sido sobrepasado');
        RETURN;
    END IF;


    INSERT INTO pedidos(id,id_sucursal,id_proveedor,ID_DIRECCION, fecha_realizado, status, satisfaccion)
    VALUES (
        secuencia_pedidos.nextval,
        sucursal_pedido.id,
        proveedor_pedido.id,
        direccion_usuario.id,
        RANGO_FECHA(today,null),
        'recibido',
        null
    );

    SELECT secuencia_pedidos.CURRVAL
    INTO nuevo_pedido_id
    FROM DUAL
    ;

    DBMS_OUTPUT.PUT_LINE('7.5 El pedido cuenta con: ');

    cantidad_productos:= dbms_random.value(1,15);
    contador_productos:= 1;

    WHILE contador_productos <= cantidad_productos
    LOOP

        SELECT SUM(pp.cantidad)
        INTO cantidad_unidades
        FROM p_p pp
        WHERE pp.id_pedido =  nuevo_pedido_id
        ;

        IF cantidad_unidades > 15 THEN
            EXIT;
        END IF;

        SELECT COUNT(p.id)
        INTO producto_flag
        FROM productos p
        WHERE NOT EXISTS (
            SELECT *
            FROM p_p
            WHERE id_producto = p.id
            AND id_pedido = nuevo_pedido_id
        )
        AND p.id_empresa_aliada = empresa_aliada_pedido.id
        ;


        IF producto_flag > 0 THEN

            SELECT p.*
            INTO producto
            FROM (
                SELECT *
                FROM productos
                ORDER BY dbms_random.value
            ) p
            WHERE NOT EXISTS (
                SELECT *
                FROM p_p
                WHERE id_producto = p.id
                AND id_pedido = nuevo_pedido_id
            )
            AND p.id_empresa_aliada = empresa_aliada_pedido.id
            FETCH FIRST 1 ROWS ONLY;

            cantidad_unidades:= dbms_random.value(1,5);

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



    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN CREAR PEDIDOS-------');

   exception
    when no_data_found then
       DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');

END;
/
