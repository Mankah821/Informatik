-- Lösung für Aufgabe h
select distinct s.vorname,s.nachname from schueler s join note n on s.id = n.schueler_id where n.note=1 order by s.nachname asc;
