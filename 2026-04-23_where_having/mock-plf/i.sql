-- Lösung für Aufgabe i
select s.nachname,f.name as fach ,n.note,n.datum from schueler s join note n on s.id = n.schueler_id join fach f on n.fach_id = f.id
where klasse= '2AHWII' order by f.name asc,n.note asc,n.datum desc;