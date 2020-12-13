---SIMULACION DESPACHAR PEDIDOS


CREATE OR REPLACE PROCEDURE despachar_pedidos( today DATE )
IS
sede_lote SEDES%ROWTYPE;
lugar_sede LUGARES%ROWTYPE;
CURSOR cursor_lotes_despachar
    IS (
        SELECT l.*
        FROM lotes l
        WHERE l.fecha_creacion.fecha_fin IS NULL
    );
CURSOR cursor_pedidos_lote (lote_id INTEGER)
    IS (
        SELECT p.*
        FROM pedidos p
        INNER JOIN l_p lp
        ON lp.id_lote = lote_id
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('9. ------SIMULACIÓN DESPACHAR PEDIDOS-------');

    FOR lote_despachar IN cursor_lotes_despachar
    LOOP

        UPDATE lotes
        SET fecha_creacion.fecha_fin = today
        WHERE id = lote_despachar.id
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

        FOR  pedido_lote IN cursor_pedidos_lote
        LOOP

            UPDATE pedidos p
            SET p.estado = 'despachado'
            WHERE p.id = pedido_lote.id
            ;

            INSERT INTO trackings(id, id_pedido, ubicaicon_exacta)
                VALUES (
                    secuencia_trackings.nextval,
                    pedido_lote.id,
                    UBICACION(10.479469,-66.843685)
                );

        END LOOP;

    END LOOP;



    DBMS_OUTPUT.PUT_LINE('------TERMINANDO SIMULACIÓN DESPACHAR PEDIDOS-------');

   exception
    when no_data_found then
       DBMS_OUTPUT.PUT_LINE('Ha ocurrido un error');

END;
/
