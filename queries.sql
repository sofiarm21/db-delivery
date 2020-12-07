---REPORTES---

----1-----
SELECT p.datos_empresa.nombre AS Empresa, CONCAT(a.n_envios,CONCAT(' envíos * ', a.ocurrencia)) AS Presupuesto, CONCAT(CONCAT(a.rango_fecha.fecha_inicio, ' '), a.rango_fecha.fecha_fin) AS Vigencia, CONCAT('$ ', CONCAT(a.precio,' /mensual')) AS Precio
FROM proveedores  p
INNER JOIN acuerdos_servicios a
ON a.id_proveedor = p.id
;

CREATE OR REPLACE PROCEDURE reporte_1(cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
    SELECT p.datos_empresa.nombre AS Empresa, CONCAT(a.n_envios,CONCAT(' envíos * ', a.ocurrencia)) AS Presupuesto, CONCAT(CONCAT(a.rango_fecha.fecha_inicio, ' '), a.rango_fecha.fecha_fin) AS Vigencia, CONCAT('$ ', CONCAT(a.precio,' /mensual')) AS Precio
    FROM proveedores  p
    INNER JOIN acuerdos_servicios a
    ON a.id_proveedor = p.id
    ;
END;
/


----2----

SELECT
    e_a.datos_empresa.nombre AS empresa,
    LISTAGG(p.datos_empresa.nombre, ', ') WITHIN GROUP (ORDER BY p.datos_empresa.nombre) AS proveedor,
    LISTAGG(c.rango_fecha.fecha_inicio, ', ') WITHIN GROUP (ORDER BY c.rango_fecha.fecha_inicio) AS Inicio,
    LISTAGG(c.rango_fecha.fecha_fin, ', ') WITHIN GROUP (ORDER BY c.rango_fecha.fecha_fin) AS Final,
    LISTAGG(l.nombre, ', ') WITHIN GROUP (ORDER BY l.nombre) AS Estado,
    LISTAGG(CONCAT('$ ',CONCAT(a_s.precio, ' mensual')),', ') WITHIN GROUP (ORDER BY a_s.precio) AS Precio
FROM empresas_aliadas e_a
INNER JOIN contratos c
ON e_a.id =  c.id_empresa_aliada
INNER JOIN proveedores p
ON c.id_proveedor = p.id
INNER JOIN det_contratos d_c
ON c.id = d_c.id_contrato
INNER JOIN lugares l
ON d_c.id_lugar = l.id
INNER JOIN acuerdos_servicios a_s
ON c.id_acuerdo_Servicio = a_s.id
GROUP BY e_a.datos_empresa.nombre
;

SELECT
    e_a.datos_empresa.nombre AS empresa,
    p.datos_empresa.nombre AS proveedor,
    c.rango_fecha.fecha_inicio AS Inicio,
    c.rango_fecha.fecha_fin AS Final,
    l.nombre AS Estado,
    CONCAT('$ ',CONCAT(a_s.precio, ' mensual')) AS Precio
FROM empresas_aliadas e_a
INNER JOIN contratos c
ON e_a.id =  c.id_empresa_aliada
INNER JOIN proveedores p
ON c.id_proveedor = p.id
INNER JOIN det_contratos d_c
ON c.id = d_c.id_contrato
INNER JOIN lugares l
ON d_c.id_lugar = l.id
INNER JOIN acuerdos_servicios a_s
ON c.id_acuerdo_Servicio = a_s.id
;

CREATE OR REPLACE PROCEDURE reporte_2(estado VARCHAR, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
    SELECT
        e_a.datos_empresa.nombre AS empresa,
        LISTAGG(p.datos_empresa.nombre, ', ') WITHIN GROUP (ORDER BY p.datos_empresa.nombre) AS proveedor,
        LISTAGG(c.rango_fecha.fecha_inicio, ', ') WITHIN GROUP (ORDER BY c.rango_fecha.fecha_inicio) AS Inicio,
        LISTAGG(c.rango_fecha.fecha_fin, ', ') WITHIN GROUP (ORDER BY c.rango_fecha.fecha_fin) AS Final,
        LISTAGG(l.nombre, ', ') WITHIN GROUP (ORDER BY l.nombre) AS Estado,
        LISTAGG(CONCAT('$ ',CONCAT(a_s.precio, ' mensual')),', ') WITHIN GROUP (ORDER BY a_s.precio) AS Precio
        FROM empresas_aliadas e_a
            INNER JOIN contratos c
                ON e_a.id =  c.id_empresa_aliada
            INNER JOIN proveedores p
                ON c.id_proveedor = p.id
            INNER JOIN det_contratos d_c
                ON c.id = d_c.id_contrato
            INNER JOIN lugares l
                ON d_c.id_lugar = l.id
            INNER JOIN acuerdos_servicios a_s
                ON c.id_acuerdo_Servicio = a_s.id
        WHERE l.nombre = estado
        GROUP BY e_a.datos_empresa.nombre
    ;
END;
/

CREATE OR REPLACE PROCEDURE reporte_2(estado VARCHAR, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        SELECT
            e_a.datos_empresa.nombre AS empresa,
            p.datos_empresa.nombre AS proveedor,
            c.rango_fecha.fecha_inicio AS Inicio,
            c.rango_fecha.fecha_fin AS Final,
            l.nombre AS Estado,
            CONCAT('$ ',CONCAT(a_s.precio, ' mensual')) AS Precio
        FROM empresas_aliadas e_a
        INNER JOIN contratos c
        ON e_a.id =  c.id_empresa_aliada
        INNER JOIN proveedores p
        ON c.id_proveedor = p.id
        INNER JOIN det_contratos d_c
        ON c.id = d_c.id_contrato
        INNER JOIN lugares l
        ON d_c.id_lugar = l.id
        INNER JOIN acuerdos_servicios a_s
        ON c.id_acuerdo_Servicio = a_s.id
        WHERE l.nombre = estado
        ;
END;
/



-----3------




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
