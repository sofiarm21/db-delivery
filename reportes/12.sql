
create or replace PROCEDURE reporte_12(origen string,destino string, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
SELECT tabla.*, p.LOGO
       FROM
    (SELECT
        p.id as dx, t.TIPO, l.NOMBRE as desde , E.NOMBRE as hasta, concat (TRUNC((((ped.FECHA_REALIZADO.FECHA_FIN - ped.FECHA_REALIZADO.FECHA_INICIO)*24*60 )/count(distinct ped.ID) )), ' minutos')as promedio
        FROM PROVEEDORES p
        LEFT JOIN sedes s
            ON s.id_proveedor = p.id
        INNER JOIN s_l sl
            ON sl.id_sede = s.id
            AND sl.pertenece = 1
        INNER JOIN lugares l
            ON l.id = sl.id_lugar
        INNER JOIN transportes t
            ON t.id_sede = s.id
        INNER JOIN LOTES L2 on t.PLACA = L2.ID_TRANSPORTE
        LEFT JOIN L_P LP on L2.ID = LP.ID_LOTE
        LEFT JOIN pedidos ped on lp.ID_PEDIDO=ped.ID
        INNER JOIN DIRECCIONES D on D.ID = ped.ID_DIRECCION and ped.STATUS='recibido'
        INNER JOIN lugares e on D.ID_LUGAR=E.ID
        where  ((0<instr(origen,l.NOMBRE)) or origen is null ) and ((0<instr(destino,e.NOMBRE)) or destino is null )
        GROUP BY (P.id, T.TIPO, L.NOMBRE,E.NOMBRE,PED.FECHA_REALIZADO.FECHA_INICIO, PED.FECHA_REALIZADO.FECHA_FIN)) tabla
    INNER JOIN PROVEEDORES p on p.ID=dx
;
    end;
