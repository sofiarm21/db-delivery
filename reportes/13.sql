SELECT
        p.id AS dx,p.DATOS_EMPRESA.NOMBRE,sum(ped.SATISFACCION )/(count(ped.ID))  AS satisfaccion
        FROM PROVEEDORES p
        INNER JOIN pedidos ped ON p.ID=ped.ID_PROVEEDOR AND ped.STATUS = 'recibido'
        GROUP BY (P.id,p.DATOS_EMPRESA.NOMBRE)
;
