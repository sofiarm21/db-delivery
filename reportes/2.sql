---2-----
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
-ESTE ES ES CARLOS :p-
create PROCEDURE reporte_2(estado VARCHAR, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
    SELECT
        e_a.datos_empresa.nombre AS empresa,
        e_a.LOGO as LOGO ,
        p.datos_empresa.nombre AS proveedor,
        to_char(c.rango_fecha.fecha_inicio) AS Inicio,
        nvl(to_char(c.rango_fecha.fecha_fin),' ') AS Final,
        l.nombre AS Estado,
        CONCAT(a_s.precio,' $ mensual') AS Precio
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
        WHERE ((0<instr(estado,l.NOMBRE)) or estado IS NULL)
        ;
END;
/


