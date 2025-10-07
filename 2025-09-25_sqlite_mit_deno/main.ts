import { DatabaseSync } from "node:sqlite";

const db = new DatabaseSync("2ahwii.db");
let stmt = db.prepare("SELECT * FROM students");
const rows = stmt.all();
console.log(rows);

stmt=db.prepare("INSERT INTO students (id,name,birthdate) VALUES (?, ?, ?)");
stmt.run(100,"Jana","1098-21-11");

console.log(stmt.all());