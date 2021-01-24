SELECT prov.DATOS_EMPRESA.NOMBRE,e.nombre,count(p.ID_PROVEEDOR)
FROM pedidos p
INNER JOIN SUCURSALES d
ON p.id_direccion = d.id
INNER JOIN lugares z
ON d.id_lugar = z.id
INNER JOIN lugares m
ON z.id_pertenece = m.id
INNER JOIN lugares e
ON m.id_pertenece = e.id
inner join PROVEEDORES prov
on prov.ID =p.ID_PROVEEDOR and p.STATUS='recibido'
group by (prov.DATOS_EMPRESA.NOMBRE,e.NOMBRE)
order by count(p.ID_PROVEEDOR) desc
fetch next 3 rows only
;
