SELECT V.*,
       T.product_id,
	   T.fecha_venta,
	   P.nombre AS nombre_producto ,
	   TI.tipo,
	   TIE.empleados,
	   TIE.latitud,
	   TIE.longitud
FROM FastFood.Ventas AS V
LEFT JOIN FastFood.ticket AS T ON T.factura_id=V.factura_id
LEFT JOIN FastFood.Product AS P ON P.id=T.product_id
LEFT JOIN FastFood.type AS TI ON TI.id=T.tipo_compra_id
LEFT JOIN FastFood.Tiendas AS TIE ON TIE.id=V.tienda_id
WHERE V.id=1