-----4-------
SELECT p.datos_empresa.nombre, l.nombre, t.tipo, COUNT(t.placa), COUNT(r.placa)
FROM proveedores p
INNER JOIN sedes s
ON s.id_proveedor = p.id
INNER JOIN s_l
ON s.id = s_l.id_sede
INNER JOIN lugares l
ON s_l.id_lugar = l.id
INNER JOIN transportes t
ON s.id = t.id_sede
INNER JOIN transportes r
ON s.id = r.id_sede
WHERE s_l.pertenece = 1
AND r.estado = 'reparacion'
AND t.estado = 'activo'
GROUP BY (p.datos_empresa.nombre, l.nombre, t.tipo)
;



SELECT p.datos_empresa.nombre, t.tipo, COUNT(t.placa)
FROM proveedores p
INNER JOIN sedes s
ON s.id_proveedor = p.id
INNER JOIN transportes t
ON s.id = t.id_sede
GROUP BY (p.datos_empresa.nombre, t.tipo)
;
