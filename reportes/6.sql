create PROCEDURE reporte_6(estado varchar,fecha date, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        select
        u.CEDULA as cedula,
        u.FOTO as foto,
        nvl(u.PRIMER_NOMBRE,' ') as PrimerN, nvl(u.SEGUNDO_NOMBRE, ' ') as SegundoN,
        nvl(u.PRIMER_APELLIDO,' ') as PrimerA, nvl(u.SEGUNDO_APELLIDO, ' ') as SegundoA,
        u.EMAIL as Email,p.DATOS_EMPRESA.NOMBRE as NombreP, est.NOMBRE as estad,
        p.LOGO as LOGO,
        r.FECHA_REGISTRO as Fregistro,
        CONCAT (concat(d.CALLE,', '),D.LUGAR_REFERENCIA) as LENVIO
        from LUGARES est,LUGARES municipio,USUARIOS u
        inner join DIRECCIONES D on u.CEDULA = D.ID_USUARIO
        inner join LUGARES L on L.ID = D.ID_LUGAR
        inner join REGISTROS R on r.ID_USUARIO=u.CEDULA
        inner join PROVEEDORES P on P.ID = R.ID_PROVEEDOR
        where L.ID_PERTENECE=municipio.ID and
              municipio.ID_PERTENECE=est.ID and
              ((0<instr(estado,est.NOMBRE)) or estado is null ) and
              (trunc(fecha)=trunc(r.FECHA_REGISTRO) or fecha is null)
            ;
    end;
/

