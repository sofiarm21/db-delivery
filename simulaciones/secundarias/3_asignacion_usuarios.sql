---SIMULACION ASIGNACION DE USUARIOS

CREATE OR REPLACE PROCEDURE asignacion_usuarios( today DATE )
IS
id_usuario INTEGER;
id_proveedor INTEGER;
flag_registro INTEGER;
usuario_nombre VARCHAR(30);
usuario_apellido VARCHAR(30);
nombre_proveedor VARCHAR(30);
BEGIN

    DBMS_OUTPUT.PUT_LINE('3. ------SIMULACIÓN ASIGNACIÓN DE USUARIO-------');


    DBMS_OUTPUT.PUT_LINE('3.1 Buscando usuarios que no tnegan registros con alguna empresa proveedora...');

    /* 1. Se  selecciona el id del usuario y el id del proveedor que no tienen un registro */
    SELECT u.cedula, p.id, p.datos_empresa.nombre
    INTO id_usuario, id_proveedor, nombre_proveedor
    FROM usuarios u
    CROSS JOIN proveedores p
    WHERE NOT EXISTS (
        SELECT *
        FROM registros r
        WHERE r.id_proveedor = p.id AND r.id_usuario = u.cedula
    )
    FETCH FIRST 1 ROWS ONLY
    ;



    SELECT u.primer_nombre, u.primer_apellido
    INTO usuario_nombre, usuario_apellido
    FROM usuarios u
    WHERE u.cedula = id_usuario
    ;

    DBMS_OUTPUT.PUT_LINE('3.2 El usuario '||usuario_nombre||' '||usuario_apellido||' no esta registrado en el app de delivery '||nombre_proveedor);
    DBMS_OUTPUT.PUT_LINE('3.3 Se procede a registrar el usuario en esta aplicación...');

    /* 2. Se  crea el registro */
    INSERT INTO registros values (id_usuario,id_proveedor,today);

    /* 3.Verificar si todos los usuarios estan registrados*/
    SELECT COUNT(u.cedula)
    INTO flag_registro
    FROM usuarios u
    WHERE NOT EXISTS (
        SELECT r.id_usuario
        FROM registros r
        WHERE   r.id_usuario = u.cedula
    );

    DBMS_OUTPUT.PUT_LINE('3.4 Verificando que todos los usuarios esten registrados en una aplicación de delivery...');

    IF flag_registro = 0 THEN
        DBMS_OUTPUT.PUT_LINE('3.5 Todas los usarios han sido registrados');
    ELSE
        DBMS_OUTPUT.PUT_LINE('3.5 Existen usuarios sin registro');
    END IF;

    WHILE flag_registro <> 0
    LOOP

        /* 3. Se  selecciona el id del usuario que no tenga registro */
        SELECT u.cedula, u.primer_nombre, u.primer_apellido
        INTO id_usuario, usuario_nombre, usuario_apellido
        FROM usuarios u
        WHERE NOT EXISTS (
            SELECT r.id_usuario
            FROM registros r
            WHERE   r.id_usuario = u.cedula
        )
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('3.6 El usuario '||usuario_nombre||' '||usuario_apellido||' no esta registrado en el ningun app de delivery');

        /* 4. Se  selecciona random id del proveedor random */

        SELECT p.id, p.datos_empresa.nombre
        INTO id_proveedor, nombre_proveedor
        FROM proveedores p
        ORDER BY DBMS_RANDOM.RANDOM
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('3.7 Se registra el usuario en la app de delivery'|| nombre_proveedor);

        /* 5. Se  crea el registro */
        INSERT INTO registros values (id_usuario,id_proveedor,today);

        /* 6.Verificar si todos los usuarios estan registrados*/
        SELECT COUNT(u.cedula)
        INTO flag_registro
        FROM usuarios u
        WHERE NOT EXISTS (
            SELECT r.id_usuario
            FROM registros r
            WHERE   r.id_usuario = u.cedula
        );

        DBMS_OUTPUT.PUT_LINE('3.8 Verificando que todos los usuarios esten registrados en una aplicación de delivery...');
        IF flag_registro = 0 THEN
            DBMS_OUTPUT.PUT_LINE('3.9 Todas los usarios han sido registrados');
        ELSE
            DBMS_OUTPUT.PUT_LINE('3.9 Existen usuarios sin registro');
        END IF;


    END LOOP;

END;
