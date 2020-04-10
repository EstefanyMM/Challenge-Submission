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
