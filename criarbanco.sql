CREATE TABLE "Usuario" (
	"id"	INTEGER NOT NULL UNIQUE,
	"nome"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"senha"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "Professor" (
	"idProfessor"	INTEGER NOT NULL UNIQUE,
	"departamento"	TEXT NOT NULL,
	"idUsuario"	INTEGER NOT NULL,
	PRIMARY KEY("idProfessor" AUTOINCREMENT),
	FOREIGN KEY("idUsuario") REFERENCES "Usuario"("id")
)

CREATE TABLE "Coordenador" (
	"id"	INTEGER NOT NULL UNIQUE,
	"departamento"	TEXT NOT NULL,
	"idUsuario"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("idUsuario") REFERENCES "Usuario"("id")
);

CREATE TABLE "DetalheSalario" (
	"id"	INTEGER NOT NULL UNIQUE,
	"salarioBase"	REAL NOT NULL,
	"beneficios"	REAL NOT NULL,
	"descontos"	REAL NOT NULL,
	"idProfessor"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "RelatorioPagamento" (
	"id"	INTEGER NOT NULL UNIQUE,
	"mes"	INTEGER NOT NULL,
	"ano"	INTEGER NOT NULL,
	"departamento"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);