




SELECT "city", COUNT("id") AS "Sum of public schools" FROM "schools" WHERE "type" = 'Public School'
 GROUP BY "city"
    HAVING  "Sum of public schools"<= 3
    ORDER BY COUNT("id") DESC, "city" ASC ;
