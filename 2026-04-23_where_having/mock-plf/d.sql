-- Lösung für Aufgabe d
select klasse,count(id) as anzahl from schueler group by klasse order by anzahl desc;