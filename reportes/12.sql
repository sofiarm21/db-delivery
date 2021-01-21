select tabla.*, p.LOGO
       from
    (select
        p.id as dx, t.TIPO, l.NOMBRE as desde , E.NOMBRE as hasta, concat (TRUNC((((ped.FECHA_REALIZADO.FECHA_FIN - ped.FECHA_REALIZADO.FECHA_INICIO)*24*60 )/count(distinct ped.ID) )), ' minutos')as promedio
        from PROVEEDORES p
        LEFT JOIN sedes s
            ON s.id_proveedor = p.id
        INNER JOIN s_l sl
            ON sl.id_sede = s.id
            AND sl.pertenece = 1
        INNER JOIN lugares l
            ON l.id = sl.id_lugar
        inner JOIN transportes t
            ON t.id_sede = s.id
        inner join LOTES L2 on t.PLACA = L2.ID_TRANSPORTE
        left join L_P LP on L2.ID = LP.ID_LOTE
        left join pedidos ped on lp.ID_PEDIDO=ped.ID
        inner join DIRECCIONES D on D.ID = ped.ID_DIRECCION and ped.STATUS='recibido'
        inner join lugares e on D.ID_LUGAR=E.ID
        GROUP BY (P.id, T.TIPO, L.NOMBRE,E.NOMBRE,PED.FECHA_REALIZADO.FECHA_INICIO, PED.FECHA_REALIZADO.FECHA_FIN)) tabla
    inner join PROVEEDORES p on p.ID=dx
;
