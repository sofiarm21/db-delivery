create or replace PROCEDURE reporte_3(comercio VARCHAR,f_inicio date,f_final date,estado varchar, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
                select GUSTAVO.*, e_a.LOGO from(
            SELECT
        e_a.ID as EX,
        e_a.sector as SECTOR,
        e_a.DATOS_EMPRESA.NOMBRE as NOMBREP,
        p.DATOS_EMPRESA.NOMBRE as NOMBREEA,
        L.NOMBRE AS ESTADO,
        COUNT(ped.ID) as Npedidos
        from SUCURSALES suc,PEDIDOS ped, EMPRESAS_ALIADAS e_a
            INNER JOIN contratos c
                ON e_a.ID =  c.id_empresa_aliada
            INNER JOIN proveedores p
                ON c.id_proveedor = p.id
            INNER JOIN det_contratos d_c
                ON c.id = d_c.id_contrato
            INNER JOIN lugares l
                ON d_c.id_lugar = l.id
         where ped.ID_PROVEEDOR=p.ID and ped.ID_SUCURSAL=suc.ID and suc.ID_EMPRESA_ALIADA=e_a.ID and e_a.DATOS_EMPRESA.NOMBRE=comercio and l.NOMBRE=estado and (ped.FECHA_REALIZADO.FECHA_FIN between f_inicio and f_final)
        group by (e_a.DATOS_EMPRESA.NOMBRE, p.DATOS_EMPRESA.NOMBRE, L.NOMBRE, e_a.sector, e_a.ID, E_A.ID)
        ) GUSTAVO
        INNER JOIN empresas_aliadas e_a
                ON E_A.ID = EX
;
END;
/
