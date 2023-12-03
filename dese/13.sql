

SELECT "name", "pupils" FROM "districts"
    JOIN
    (SELECT "district_id", "pupils"  FROM "expenditures") AS "pupilss"
    ON districts.id = pupilss.district_id


ORDER BY "pupils" DESC LIMIT 10;
