create PROCEDURE reporte_5(est varchar, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        select
        tabla.*, ea.LOGO as logoea, p.LOGO as logop from(
            select
            ea.ID as auxea,p.ID as auxp,ea.DATOS_EMPRESA.NOMBRE as empresaA,
            p.DATOS_EMPRESA.NOMBRE AS proveedor,
            m.NOMBRE as municipio,e.NOMBRE as estado,
            concat (sum(pp.CANTIDAD),' unidades') from EMPRESAS_ALIADAS ea
                inner join SUCURSALES s on ea.ID = s.ID_EMPRESA_ALIADA
                inner join LUGARES z on z.id=s.ID_LUGAR
                inner join lugares m on m.id=z.ID_PERTENECE
                inner join lugares e on e.ID=m.ID_PERTENECE
                inner join PEDIDOS ped on s.ID = ped.ID_SUCURSAL
                inner join P_P pp on ped.id=pp.ID_PEDIDO
                inner join PROVEEDORES p on p.id=ped.ID_PROVEEDOR
                where (0<instr(est,e.NOMBRE)) or est is null
                group by(ea.DATOS_EMPRESA.NOMBRE,p.DATOS_EMPRESA.NOMBRE,m.NOMBRE,e.NOMBRE, ea.ID, p.ID)
                order by (sum(pp.CANTIDAD))DESC
                FETCH FIRST 5 ROWS ONLY) tabla
        inner join EMPRESAS_ALIADAS ea on ea.ID=auxea
        inner join PROVEEDORES p on p.ID=auxp
;
    end;
/
