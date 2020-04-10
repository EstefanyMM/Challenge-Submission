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
