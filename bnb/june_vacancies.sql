

CREATE VIEW "june_vacancies" as
    SELECT "listings"."id", "property_type", "host_name", "days_vacant", "available" FROM
    ((SELECT "available", "listing_id", COUNT("available") AS "days_vacant" FROM "availabilities"
    WHERE "available" = 'TRUE' AND "date" BETWEEN '2023-05-31' AND '2023-07-01'
    GROUP BY "listing_id") AS "first"
    JOIN
    "listings"

    ON "first"."listing_id"="listings"."id");


