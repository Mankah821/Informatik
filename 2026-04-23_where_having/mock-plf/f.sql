-- Lösung für Aufgabe f

SELECT f.name AS fach,ROUND(AVG(n.note), 2) AS durchschnitt,COUNT(*) AS anzahl FROM note n JOIN fach f ON n.fach_id = f.id
GROUP BY n.fach_id HAVING AVG(n.note) < 2.5 AND COUNT(*) >= 3 ORDER BY durchschnitt ASC;