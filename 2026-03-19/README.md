# Verbesserung / Nachdokumentation

Die Tabellen und Constraints wurden bereits früher erstellt und abgegeben.

Nachträglich ergänzt wurde nur die Dokumentation des Foreign-Key-Tests, weil in der ursprünglichen Abgabe die Fehlermeldung nicht klar dokumentiert war. Die dokumentation ist im screenshot zu sehen.
Getestet wurde ein Produkt mit ungültiger `category_id = 999`.

Ergebnis:

```text
Runtime error: FOREIGN KEY constraint failed (19)