--Obra/año/Quarter /Numero de veces alquilado
select 
      NombreEvento,
	  year(FechaFinal) as anio,
	  datepart(quarter, FechaFinal) as Trimestre,
	  count(*) as #vecesAlquiladas
From examen.Orden as o
inner join examen.DetalleOrden as do
on o.IdOrden = do.IdOrden
group by NombreEvento,
         year(FechaFinal),
		 datepart(quarter, FechaFinal)
		 


--Cliente/año/Semestre/Numero de ordenes realizadas
--1P los primeros seis meses y 2P otras seis meses
--2 periodos cada 6 meses
SELECT 
      c.NombreCliente,
	  YEAR(FechaFinal) as anio,
	  CASE
	      WHEN MONTH(FechaFinal) < 7 THEN '1P'
		  Else '2P'
	  END AS Semestre,
	 COUNT(ob.IdObra) AS ordenesRealizadas
FROM examen.Cliente as c
INNER JOIN examen.Orden as o
ON c.IdCliente = o.IdCliente
INNER JOIN examen.DetalleOrden as d
ON o.IdOrden = d.IdOrden
INNER JOIN examen.Obra AS ob
ON d.IdObra = ob.IdObra
GROUP BY   
            c.NombreCliente,
		    YEAR(FechaFinal),
			CASE
	            WHEN MONTH(FechaFinal) < 7 THEN '1P'
				ELSE '2P'
	        END


--Obra/Mes/Numero de ordenes realizadas	

SELECT 
      NombreEvento,
	  MONTH(FechaFinal) AS mes,
	  do.IdObra AS #Ordenes
FROM examen.Orden as o
INNER JOIN examen.DetalleOrden as do
ON 	o.IdOrden = do.IdOrden
INNER JOIN examen.Obra as ob
ON do.IdObra = ob.IdObra
WHERE YEAR(FechaFinal) = 1996
GROUP BY    NombreEvento,
            MONTH(FechaFinal),
			do.IdObra
ORDER BY do.IdObra


--Proveedor/Año	/Mes/Cuanto Gano	

SELECT 	
      o.IdProveedor,
	  p.NombreProveedor,
	  YEAR(od.FechaFinal) as Anio,
	  MONTH(od.FechaFinal) as Mes,
	  SUM((o.Precio*do.Cantidad)* 0.15) as GananciaProveedor
FROM examen.Obra as o
INNER JOIN examen.Proveedor p
ON o.IdProveedor = p.IdProveedor
INNER JOIN examen.DetalleOrden as do
ON o.IdObra = do.IdObra
INNER JOIN examen.Orden as od
ON do.IdOrden = od.IdOrden
GROUP BY  o.IdProveedor,
          p.Nombreproveedor,
          YEAR(od.FechaFinal),
		  MONTH(od.FechaFinal)
Order BY GananciaProveedor ASC
