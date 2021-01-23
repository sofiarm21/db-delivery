SELECT rep.*, p.logo FROM(
    SELECT e.nombre, p.datos_empresa.nombre, d.calle, d.lugar_referencia, t.id, pe.fecha_realizado.fecha_inicio, pe.fecha_realizado.fecha_fin, COUNT(pp.id_pedido), u.email
        FROM pedidos pe
        INNER JOIN proveedores p
        ON pe.id_proveedor = p.id
        INNER JOIN registros r
        ON p.id = r.id_proveedor
        INNER JOIN usuarios u
        ON r.id_usuario = u.cedula
        INNER JOIN direcciones d
        ON pe.id_direccion = d.id
        INNER JOIN lugares z
        ON d.id_lugar = z.id
        INNER JOIN lugares m
        ON z.id_pertenece = m.id
        INNER JOIN lugares e
        ON m.id_pertenece = e.id
        INNER JOIN trackings t
        ON pe.id = t.id_pedido
        INNER JOIN p_p pp
        ON pe.id = pp.id_pedido
        GROUP BY(e.nombre, p.datos_empresa.nombre, d.calle, d.lugar_referencia, t.id, pe.fecha_realizado.fecha_inicio, pe.fecha_realizado.fecha_fin, u.email)) rep
INNER JOIN proveedores p
ON p.id = p.id
;
