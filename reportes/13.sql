select
        p.id as dx,p.DATOS_EMPRESA.NOMBRE,sum(ped.SATISFACCION )/(count(ped.ID))  as satisfaccion
        from PROVEEDORES p
        inner join pedidos ped on p.ID=ped.ID_PROVEEDOR and ped.STATUS='recibido'
        GROUP BY (P.id,p.DATOS_EMPRESA.NOMBRE)
;
