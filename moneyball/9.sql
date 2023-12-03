-- What salaries are other teams paying? In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.
-- Your query should return a table with two columns, one for the teams’ names and one for their average salary.

SELECT teams.name, avgsalaries.average_salary
FROM "teams" JOIN (
    SELECT "team_id", ROUND(AVG("salary"), 2)
    AS "average_salary" FROM "salaries" WHERE "year" =2001
    GROUP BY "team_id") AS "avgsalaries"
ON teams.id = avgsalaries.team_id
ORDER BY avgsalaries.average_salary ASC LIMIT 5;


