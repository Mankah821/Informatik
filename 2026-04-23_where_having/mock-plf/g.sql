-- Lösung für Aufgabe g
SELECT
    l1.vorname || ' ' || l1.nachname AS lehrer,
    l2.vorname || ' ' || l2.nachname AS vorgesetzter
FROM lehrer l1
LEFT JOIN lehrer l2 ON l1.chef_id = l2.id
ORDER BY l1.nachname;