SELECT "name", (
    SELECT "pupils" FROM "expenditures"
    WHERE "pupils" AND expenditures.district_id= districts.id
) AS "sum of pupils" FROM "districts" WHERE "sum of pupils" IS NOT NULL ;

