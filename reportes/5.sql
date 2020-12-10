create or replace PROCEDURE reporte_5(estado varchar, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        select
        u.CEDULA as cedula,
        u.FOTO as foto,
        u.PRIMER_NOMBRE as PrimerN, u.SEGUNDO_NOMBRE as SegundoN,
        u.PRIMER_APELLIDO as PrimerA, u.SEGUNDO_APELLIDO as SegundoA,
        u.EMAIL as Email,p.DATOS_EMPRESA.NOMBRE as NombreP,
        p.LOGO as LOGO,
        r.FECHA_REGISTRO as Fregistro,
        est.NOMBRE
        from LUGARES est,LUGARES municipio,USUARIOS u
        inner join DIRECCIONES D on u.CEDULA = D.ID_USUARIO
        inner join LUGARES L on L.ID = D.ID_LUGAR
        inner join REGISTROS R on r.ID_USUARIO=u.CEDULA
        inner join PROVEEDORES P on P.ID = R.ID_PROVEEDOR
        where L.ID_PERTENECE=municipio.ID and
              municipio.ID_PERTENECE=est.ID and
              est.NOMBRE=estado
            ;
    end;
