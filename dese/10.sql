 SELECT "name", 
    (SELECT "per_pupil_expenditure" FROM "expenditures" 
    WHERE "district_id" = districts.id) AS "per pupil expenditure"
FROM "districts" WHERE "type" = 'Public School District' 
ORDER BY "per pupil expenditure" DESC LIMIT 10;