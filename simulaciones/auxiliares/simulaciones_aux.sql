--QUERIES SIMULACION ASIGNACION DE CONTRATOS

--Seleccionar proveedor y empresa aliada que no tenga contrato activo entre si

SELECT DISTINCT p.id as id_proveedor, ea.id as id_empresa_aliada
FROM proveedores p
INNER JOIN CONTRATOS c
ON c.id_proveedor = p.id
INNER JOIN empresas_aliadas ea
ON NOT EXISTS (
    SELECT c.id_empresa_aliada
    FROM contratos c
    WHERE c.id_empresa_aliada = ea.id
    AND c.id_proveedor = p.id
    AND TO_DATE('01/06/2020', 'DD-MM-YYYY')
        BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
)
ORDER BY p.id, ea.id ASC
;

--Seleccionar acuerdo de servicio

SELECT a_s.id
FROM ACUERDOS_SERVICIOS a_s
WHERE a_s.id_proveedor = 1
;

--Seleccionar estado al que aplica
SELECT  l.id, l.nombre
    FROM LUGARES l
    INNER JOIN SEDES s
    ON s.id_proveedor = 1
    INNER JOIN s_l sl
    ON sl.id_sede = s.id
    INNER JOIN lugares z
    ON z.id = sl.id_lugar
    WHERE z.id_pertenece = l.id
    ;

--Seleccionar proveedor que no tenga contrato activo

SELECT p.id
FROM proveedores p
WHERE p.id NOT IN (
    SELECT c.id_proveedor
    FROM contratos c
    WHERE TO_DATE('01/06/2020', 'DD-MM-YYYY')
        BETWEEN c.rango_fecha.fecha_inicio AND c.rango_fecha.fecha_fin
)
ORDER BY p.id ASC;

--Comprobar si existen proveedores sin contrato
SELECT COUNT (p.id)
FROM proveedores p
WHERE NOT EXISTS (
    SELECT c.id
    FROM contratos c
    WHERE c.id_proveedor = p.id
)
;
