
select p.DATOS_EMPRESA.NOMBRE,m.NOMBRE,e.NOMBRE,sum(pp.CANTIDAD) from PROVEEDORES p
inner join PEDIDOS pe on p.ID = PE.ID_PROVEEDOR
inner join DIRECCIONES d on d.ID=pe.ID_DIRECCION
inner join LUGARES z on z.id=d.ID_LUGAR
inner join LUGARES m on m.ID=z.ID_PERTENECE
inner join LUGARES e on e.ID=m.ID_PERTENECE
inner join P_P pp on pp.ID_PEDIDO=p.ID
group by (p.DATOS_EMPRESA.NOMBRE,m.NOMBRE,e.NOMBRE)
;



