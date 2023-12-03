

SELECT "name",
    (SELECT "per_pupil_expenditure"
    FROM "expenditures" WHERE "per_pupil_expenditure" > (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures")
        AND districts.id = expenditures.district_id
    ) AS "per_pupil_expenditures",
        (SELECT "exemplary" FROM "staff_evaluations"
        WHERE "exemplary" > (
            SELECT AVG("exemplary") FROM "staff_evaluations")
            AND districts.id = staff_evaluations.district_id
        ) AS "exemplaries"


FROM "districts" WHERE "type" = 'Public School District'
AND "exemplaries" IS NOT NULL AND "per_pupil_expenditures" IS NOT NULL
ORDER BY "exemplaries" DESC, "per_pupil_expenditures" DESC;
