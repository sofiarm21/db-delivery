----1-----
SELECT p.datos_empresa.nombre AS Empresa, CONCAT(a.n_envios,CONCAT(' envíos * ', a.ocurrencia)) AS Presupuesto, CONCAT(CONCAT(a.rango_fecha.fecha_inicio, ' '), a.rango_fecha.fecha_fin) AS Vigencia, CONCAT('$ ', CONCAT(a.precio,' /mensual')) AS Precio
FROM proveedores  p
INNER JOIN acuerdos_servicios a
ON a.id_proveedor = p.id
;

create or replace PROCEDURE reporte_1(cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
    SELECT p.datos_empresa.nombre AS Empresa,p.LOGO as LOGO, CONCAT(a.n_envios,CONCAT(' * ', a.ocurrencia)) AS Presupuesto, CONCAT(CONCAT (a.rango_fecha.fecha_inicio,' - '), a.rango_fecha.fecha_fin) AS Vigencia, CONCAT('$ ', a.precio) AS Precio
    FROM proveedores  p
    INNER JOIN acuerdos_servicios a
    ON a.id_proveedor = p.id
    ;
END;
/

