

CREATE VIEW "available" AS
    SELECT "listings"."id", "property_type", "host_name", "date" FROM
    ((SELECT * FROM "availabilities" WHERE "available" = 'TRUE') AS "av"
    JOIN
    "listings"
    ON "av"."listing_id" = "listings"."id" );

