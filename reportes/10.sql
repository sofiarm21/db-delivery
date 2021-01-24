SELECT rep.*, ea.logo AS Comercio, p.logo AS "Logo Proveedor de Servicio" FROM(
    SELECT c.rango_fecha.fecha_inicio, c.rango_fecha.fecha_fin, p.datos_empresa.nombre, SUM(prod.precio * pp.cantidad)
        FROM contratos c
        INNER JOIN proveedores p
        ON c.id_proveedor = p.id
        INNER JOIN empresas_aliadas ea
        ON c.id_empresa_aliada = ea.id
        INNER JOIN productos prod
        ON  ea.id = prod.id_empresa_aliada
        INNER JOIN p_p pp
        ON prod.id = pp.id_producto
        INNER JOIN pedidos ped
        ON pp.id_pedido = ped.id
        GROUP BY(c.rango_fecha.fecha_inicio, c.rango_fecha.fecha_fin, p.datos_empresa.nombre)
)rep
INNER JOIN empresas_aliadas ea
ON ea.id = ea.id
INNER JOIN proveedores p
ON p.id = p.id
;
