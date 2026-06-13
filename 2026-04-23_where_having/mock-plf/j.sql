-- Lösung für Aufgabe j
select s.vorname,s.nachname,s.klasse,round(avg(n.note), 2) as durchschnitt,count(n.note) as anzahl from schueler s join note n on s.id=n.schueler_id
GROUP BY n.schueler_id HAVING count(n.note)>=5 ORDER BY durchschnitt ASC,s.nachname ASC;