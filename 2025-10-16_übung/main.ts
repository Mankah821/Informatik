


import { DB } from "https://deno.land/x/sqlite/mod.ts";

const db = new DB("2ahwii.db");

function showTable(){
for (const [id, name, birthdate] of db.query("SELECT * FROM students")) {
  console.log(id, name, birthdate);
}
}

db.query("INSERT OR REPLACE INTO students (id,name,birthdate) VALUES (?, ?, ?)", [105, "Jana", "1098-21-11"]);

 showTable();

db.query("UPDATE students SET name = ? WHERE id = ?", ["Janina", 105]);

 showTable();

for (const [id, name, birthdate] of db.query("SELECT * FROM students WHERE name = ?", ["Janina"])) {
  console.log("Nachher:", id, name, birthdate);
}


db.query("DELETE FROM students WHERE id = ?", [105]);

 showTable();


await new Promise((resolve) => setTimeout(resolve, 100));
db.close();
