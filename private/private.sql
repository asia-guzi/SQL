
CREATE TABLE "key" (
    "sentence_id" INTEGER,
    "start" INTEGER,
    "lenght" INTEGER
);



.import --csv cipher.csv key

CREATE VIEW "inside" AS
    SELECT  "sentence","start", "lenght" FROM
    ( "sentences"
    JOIN
    "key"
    ON "sentences"."id" = "key"."sentence_id");

CREATE VIEW "message" AS
    SELECT substr("sentence", "start", "lenght") AS "phrase" FROM "inside";
SELECT "phrase" FROM "message";
