
SELECT "city", COUNT("id") AS "Sum of schools" FROM "schools" WHERE "type" = 'Public School'
    GROUP BY "city"
    ORDER BY "Sum of schools" DESC, "city" ASC LIMIT 10;
