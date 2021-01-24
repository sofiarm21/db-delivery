SELECT p.fecha_realizado.fecha_inicio, p.fecha_realizado.fecha_fin, e.nombre AS Estado, z.nombre AS Zona, prod.sector, COUNT(prod.id)
    FROM pedidos p
    INNER JOIN direcciones d
    ON p.id_direccion = d.id
    INNER JOIN lugares z
    ON d.id_lugar = z.id
    INNER JOIN lugares m
    ON z.id_pertenece = m.id
    INNER JOIN lugares e
    ON m.id_pertenece = e.id
    INNER JOIN p_p pp
    ON p.id = pp.id_pedido
    INNER JOIN productos prod
    ON pp.id_producto = prod.id
    GROUP BY (p.fecha_realizado.fecha_inicio, p.fecha_realizado.fecha_fin, e.nombre, z.nombre, prod.sector)
    ORDER BY COUNT(prod.id) DESC
    FETCH NEXT 10 ROWS ONLY
;
