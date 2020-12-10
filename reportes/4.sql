create PROCEDURE reporte_4(est varchar, cur OUT sys_refcursor) IS
BEGIN
    OPEN cur FOR
        select rep.*, p.logo from(
            SELECT p.ID as ex, p.datos_empresa.nombre, l.nombre, t.tipo, COUNT(distinct d.placa) as disponibles, COUNT(distinct r.placa) as reparacion
            FROM lugares estado,transportes r,transportes d,transportes t,proveedores p
            INNER JOIN sedes s
            ON s.id_proveedor = p.id
            INNER JOIN s_l
            ON s.id = s_l.id_sede
            INNER JOIN lugares l
            ON s_l.id_lugar = l.id
            WHERE s_l.pertenece = 1
            and s.id = d.id_sede
            and s.id = r.id_sede
            AND r.estado = 'reparación'
            AND d.estado = 'activo'
            and ((NVL(d.TIPO,r.tipo)=t.TIPO and NVL(r.TIPO,d.tipo)=t.TIPO))
            and l.ID_PERTENECE=estado.ID
            and estado.NOMBRE=est
            GROUP BY (p.datos_empresa.nombre, l.nombre, t.tipo, p.ID)) rep
INNER JOIN PROVEEDORES P
ON P.ID = EX
;
    end;
/

