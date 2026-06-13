-- Lösung für Aufgabe e
select s.vorname,s.nachname,f.name as fach from schueler s join note n on s.id=n.schueler_id join fach f on n.fach_id=f.id where n.note>3 
order by s.nachname,f.name asc;