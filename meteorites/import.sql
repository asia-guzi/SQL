

CREATE TABLE "meteorites_temp"(
    "name" TEXT,
    "id" INT,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK( "discovery" IN ('Fell', 'Found')),
    "year" INT,
    "lat" REAL,
    "long" REAL);

CREATE TABLE "meteorites_temptemp"(
    "name" TEXT,
    "id" INT,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK( "discovery" IN ('Fell', 'Found')),
    "year" INT,
    "lat" REAL,
    "long" REAL);

CREATE TABLE "meteorites"(
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK( "discovery" IN ('Fell', 'Found')),
    "year" INT,
    "lat" REAL,
    "long" REAL,
 PRIMARY KEY ("id"));


.import --csv --skip 1 meteorites.csv meteorites_temp


DELETE FROM "meteorites_temp" WHERE "nametype" = 'Relict';
ALTER TABLE "meteorites_temp" DROP COLUMN "id";
ALTER TABLE "meteorites_temp" DROP COLUMN "nametype";



UPDATE "meteorites_temp" SET "mass" = NULL WHERE "mass"='';
UPDATE "meteorites_temp" SET "year" = NULL WHERE "year"='';
UPDATE "meteorites_temp" SET "lat" = NULL WHERE "lat"='';
UPDATE "meteorites_temp" SET "long" = NULL WHERE "long"='';

UPDATE "meteorites_temp" SET "mass" = ROUND ("mass", 2);
UPDATE "meteorites_temp" SET "lat" = ROUND ("lat", 2);
UPDATE "meteorites_temp" SET "long" = ROUND ("long", 2);



INSERT INTO "meteorites"("name", "class", "mass", "discovery", "year", "lat", "long")
    SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp"
    ORDER BY "year" ASC, "name" ASC;






