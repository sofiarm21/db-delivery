create PROCEDURE reporte_13(f_inicio date,f_final date, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
select
       tabla.*, p.LOGO from
    (select
            p.id as dx,p.DATOS_EMPRESA.NOMBRE,concat(to_char(sum(ped.SATISFACCION )/(count(ped.ID)),'fm9990.00'), ' estrellas')  as satisfaccion
            from PROVEEDORES p
            inner join pedidos ped on p.ID=ped.ID_PROVEEDOR and ped.STATUS='recibido'
            where ((ped.FECHA_REALIZADO.FECHA_FIN between f_inicio and f_final) OR F_INICIO IS NULL OR F_FINAL IS NULL)
            GROUP BY (P.id,p.DATOS_EMPRESA.NOMBRE)) tabla
    inner join PROVEEDORES p on p.ID=dx
    ;
    end;
/


