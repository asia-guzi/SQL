




SELECT "name",
    (SELECT "per_pupil_expenditure" FROM "expenditures"
    WHERE expenditures.district_id = schools.district_id )
    AS "per pupil expenditure",
        (SELECT "graduated" FROM "graduation_rates"
        WHERE graduation_rates.school_id = schools.id)
        AS "graduation rate"

FROM "schools" WHERE "graduation rate" IS NOT NULL
AND "per pupil expenditure" IS NOT NULL
ORDER BY "per pupil expenditure" DESC, "name" ;
