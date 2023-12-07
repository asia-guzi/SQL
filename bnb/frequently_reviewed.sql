

CREATE VIEW "frequently_reviewed" AS
    SELECT "listings"."id", "property_type", "host_name", "temp"."reviews" FROM
    ((SELECT "reviews"."listing_id", COUNT("id") AS "reviews" FROM "reviews"
    GROUP BY "reviews"."listing_id") AS "temp"
    JOIN
    "listings"

    ON "listings"."id" = "temp"."listing_id")
    ORDER BY "reviews" DESC, "property_type", "host_name" LIMIT 100 ;

