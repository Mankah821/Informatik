PS C:\Schule htl 2024_2025\Htl 2025_2026\infi\Git Hub Repo\Informatik-1\2025-11-27> sqlite3 lieblingsessen.db
SQLite version 3.50.4 2025-07-30 19:33:53
Enter ".help" for usage hints.
sqlite> update person set lieblingsessen=1 where id=1 or id=4;
sqlite> update person set lieblingsessen=6 where id=3 or id=12;
sqlite> update person set lieblingsessen=2 where id=15 or id=14 or id=13 or id=6;
sqlite> update person set lieblingsessen=4 where id=5 or id=8;                   
sqlite> update person set lieblingsessen=3 where id=11 or id=9;
sqlite> 


SELECT name FROM person WHERE lieblingsessen IN (    SELECT id    FROM essen    WHERE essen = 'Mohnnudeln');
Mankah
Otto
Simon


 
sqlite> SELECT person FROM lieblingsessen JOIN essen ON person;                        
Parse error: no such table: lieblingsessen
sqlite> .exit                                                  


Parse error: no such column: a.lieblingsessen
sqlite> select p.name, e.essen from person p join essen e on e.id= p.lieblingsessen;
Max|Burger
Mankah|Mohnnudeln
Benjamin|Kipferl
Sophia|Burger
Alex E.|Putenfilet
Dino|Schnitzel
Otto|Mohnnudeln
Roger|Putenfilet
Nicolai|Weckerl
Simon|Mohnnudeln
Jonas|Weckerl
Alex H.|Kipferl
Marvin|Schnitzel
Sami|Schnitzel
Maximilian|Schnitzel
sqlite>