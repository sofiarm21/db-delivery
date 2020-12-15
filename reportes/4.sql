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

create PROCEDURE reporte_4(est varchar, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        select rep.*, p.logo from(
            SELECT p.id as ex,p.datos_empresa.nombre, e.nombre, t.tipo, COUNT(distinct a.placa) AS Activo, COUNT(distinct d.placa) AS Reparación
                FROM proveedores p
                LEFT JOIN sedes s
                ON s.id_proveedor = p.id
                LEFT JOIN transportes t
                ON t.id_sede = s.id
                LEFT JOIN transportes a
                ON a.id_sede = s.id
                AND a.estado = 'activo'
                AND a.tipo = t.tipo
                LEFT JOIN  transportes d
                ON d.id_sede = s.id
                AND d.estado = 'reparación'
                AND d.tipo = t.tipo
                INNER JOIN s_l sl
                ON sl.id_sede = s.id
                AND sl.pertenece = 1
                INNER JOIN lugares l
                ON l.id = sl.id_lugar
                INNER JOIN lugares e
                ON e.id = l.id_pertenece
                where ((0<instr(est,e.NOMBRE)) or est is null)
                GROUP BY (p.datos_empresa.nombre, e.nombre, t.tipo, p.ID)) rep
INNER JOIN PROVEEDORES P
ON P.ID = EX;
    end;
/

