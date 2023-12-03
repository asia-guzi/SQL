-- The general manager has asked you for a report which details each player’s name, their salary for each year they’ve been playing, and their number of home runs for each year they’ve been playing. To be precise, the table should include:

-- All player’s first names
-- All player’s last names
-- All player’s salaries
-- All player’s home runs
-- The year in which the player was paid that salary and hit those home runs
-- In 10.sql, write a query to return just such a table.

-- Your query should return a table with five columns, per the above.
-- Order the results, first and foremost, by player’s IDs (least to greatest).
-- Order rows about the same player by year, in descending order.
-- Consider a corner case: suppose a player has multiple salaries or performances for a given year. Order them first by number of home runs, in descending order, followed by salary, in descending order.
-- Be careful to ensure that, for a single row, the salary’s year and the performance’s year match.



-- SELECT "first_name", "last_name", "salary",
-- "HR", "year" FROM
--          ("players"
--             FULL JOIN
--             (SELECT "player_id", "salary", "year" FROM "salaries") AS salariess
--             ON players.id = salariess.player_id)
--        WHERE salariess.year = players.year ORDER BY "id" ASC, "year" DESC, "HR" DESC, "salary" DESC


-- SELECT "first_name", "last_name", "salary","HR", "year" FROM

-- (
--     SELECT * FROM "players"

--     FULL JOIN

--         (SELECT "player_id", "salary", "year" FROM "salaries") AS salariess
--         ON players.id = salariess.player_id

--     FULL  JOIN
--             (SELECT "player_id", "HR", performances.year FROM "performances") AS performancess
--             ON performancess.player_id = salariess.player_id AND performancess.year = salariess.year
-- ;



--    SELECT "first_name", "last_name", "salary","HR", salariess.year FROM "players"

--     JOIN

--         (SELECT "player_id", "salary", "year"  FROM "salaries") AS salariess
--         ON players.id = salariess.player_id
--         LEFT JOIN
--             (SELECT "player_id", "HR", performances.year FROM "performances") AS performancess
--             ON performancess.player_id = salariess.player_id AND performancess.year = salariess.year
-- ORDER BY "id" ASC, salariess.year DESC, "HR" DESC, "salary" DESC
;



SELECT "first_name", "last_name", "salary","HR", outcomess.year FROM
               (SELECT *  FROM "salaries"
                FULL JOIN
        (SELECT "player_id", "HR", performances.year FROM "performances") AS "performancess"
            ON performancess.player_id = salaries.player_id AND performancess.year = salaries.year) AS "outcomess"
            JOIN (SELECT "first_name", "last_name", "id" FROM "players") AS "playerss" ON playerss.id = outcomess.player_id
ORDER BY outcomess.player_id ASC, outcomess.year DESC, "HR" DESC, "salary" DESC;
