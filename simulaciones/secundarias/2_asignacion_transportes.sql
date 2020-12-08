---SIMULACION ASIGNACION DE TRANSPORTES

CREATE OR REPLACE PROCEDURE asignacion_transportes
IS
id_sede INTEGER;
flag_transportes INTEGER;
cant_transportes INTEGER;
contador INTEGER;
nombre_proveedor VARCHAR(30);
BEGIN
    DBMS_OUTPUT.PUT_LINE('2. ------SIMULACIÓN ASIGNACIÓN DE TRANSPORTES-------');
    /* 1. Verificar si todas las sedes tienen transportes */
    DBMS_OUTPUT.PUT_LINE('2.1 Verificando que todas sedes tengan transportes...');

    SELECT COUNT(s.id)
    INTO flag_transportes
    FROM sedes s
    WHERE NOT EXISTS (
        SELECT t.id_sede
        FROM transportes t
        WHERE t.id_sede = s.id
    );

    IF flag_transportes <> 0 THEN
        DBMS_OUTPUT.PUT_LINE('2.1.1 Existen sedes sin transportes, se procede a crear transportes...');
    ELSE
        DBMS_OUTPUT.PUT_LINE('2.1.1 Todas las sedes tienen transportes');
    END IF;

    WHILE flag_transportes <> 0
    LOOP

        /* 2. Seleccionar el id de una sede que no tenga transportes*/
        SELECT s.id, p.datos_empresa.nombre
        INTO id_sede, nombre_proveedor
        FROM sedes s
        INNER JOIN proveedores p
        ON s.id_proveedor = p.id
        WHERE NOT EXISTS (
            SELECT t.id_sede
            FROM transportes t
            WHERE t.id_sede = s.id
        )
        FETCH FIRST 1 ROWS ONLY
        ;

        DBMS_OUTPUT.PUT_LINE('2.2 Una sede con id '||id_sede||' perteneciente al proveedor '||nombre_proveedor||' no tiene transportes');

        /* 3. Añadir transportes */

        /* 3.1 Añadir bicicletas */
        /* 3.1.1 Seleccionar cantidad de bicicletas de 1 a 5 */
        cant_transportes:= dbms_random.value(1,5);
        /* 3.1.2 Insertar cantidad de bicicletas */
        DBMS_OUTPUT.PUT_LINE('Añadiendo '||cant_transportes||' bicicletas...');
        contador:=1;
        LOOP
            INSERT INTO transportes VALUES (secuencia_transportes.nextval, id_sede, 'bicicleta', 'activo');
            contador:=contador+1;
            IF contador > cant_transportes THEN
                EXIT;
            END IF;
        END LOOP;

        /* 3.2 Añadir motos */
        /* 3.2.1 Seleccionar cantidad de motos de 1 a 20 */
        cant_transportes:= dbms_random.value(1,20);
        /* 3.2.2 Insertar cantidad de motos  */
        DBMS_OUTPUT.PUT_LINE('Añadiendo '||cant_transportes||' motos...');
        contador:=1;
        LOOP
            INSERT INTO transportes VALUES (secuencia_transportes.nextval, id_sede, 'moto', 'activo');
            contador:=contador+1;
            IF contador > cant_transportes THEN
                EXIT;
            END IF;
        END LOOP;

        /* 3.3 Añadir carros */
        /* 3.3.1 Seleccionar cantidad de carros de 1 a 10 */
        cant_transportes:= dbms_random.value(1,10);
        /* 3.3.2 Insertar cantidad de carros  */
        DBMS_OUTPUT.PUT_LINE('Añadiendo '||cant_transportes||' carros...');
        contador:=1;
        LOOP
            INSERT INTO transportes VALUES (secuencia_transportes.nextval, id_sede, 'carro', 'activo');
            contador:=contador+1;
            IF contador > cant_transportes THEN
                EXIT;
            END IF;
        END LOOP;

        /* 3.3 Añadir camionetas */
        /* 3.3.1 Seleccionar cantidad de camionetas de 1 a 3 */
        cant_transportes:= dbms_random.value(1,3);
        /* 3.3.2 Insertar cantidad de carros  */
        DBMS_OUTPUT.PUT_LINE('Añadiendo '||cant_transportes||' camionetas...');
        contador:=1;
        LOOP
            INSERT INTO transportes VALUES (secuencia_transportes.nextval, id_sede, 'camioneta', 'activo');
            contador:=contador+1;
            IF contador > cant_transportes THEN
                EXIT;
            END IF;
        END LOOP;


        /* 4. Verificar si todas las sedes tienen transportes */
        SELECT COUNT(s.id)
        INTO flag_transportes
        FROM sedes s
        WHERE NOT EXISTS (
            SELECT t.id_sede
            FROM transportes t
            WHERE t.id_sede = s.id
        );

        IF flag_transportes <> 0 THEN
            DBMS_OUTPUT.PUT_LINE('2.1.1 Existen sedes sin transportes, se procede a crear transportes...');
        ELSE
            DBMS_OUTPUT.PUT_LINE('2.1.1 Todas las sedes tienen transportes');
        END IF;

    END LOOP;

    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN ASIGNACIÓN DE TRANSPORTES-------');


END;
