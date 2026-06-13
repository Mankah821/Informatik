-- Lösung für Aufgabe c
select vorname,nachname,klasse from schueler where klasse!='2AHWII' and eintrittsjahr>=2024 order by nachname ASC;