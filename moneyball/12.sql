-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

-- Your query should return a table with two columns, one for the players’ first names and one of their last names.
-- You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
-- Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
-- Keep in mind the lessons you’ve learned in 10.sql and 11.sql!

-- You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.
-- Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
-- Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.
-- As in 10.sql, ensure that the salary’s year and the performance’s year match.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.


-- You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.
-- Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
-- Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.
-- As in 10.sql, ensure that the salary’s year and the performance’s year match.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.

SELECT "first_name", "last_name", ("salary"/"H") "dollars per hit" FROM ((

"players"

    JOIN

        (SELECT "player_id", "salary", "year"  FROM "salaries") AS salariess
        ON players.id = salariess.player_id
        JOIN
            (SELECT "player_id", "H", performances.year FROM
            "performances"
            EXCEPT
            SELECT "player_id", "H", performances.year FROM "performances" WHERE "H" = 0 OR "year" NOT IN (2001)

            ) AS performancess
            ON performancess.player_id = salariess.player_id AND performancess.year = salariess.year)
            INTERSECT
            -- You need a player that can get hits. Who might be the most underrated? In 11.sql, write a SQL query to find the 10 least expensive players per hit in 2001.

-- Your query should return a table with three columns, one for the players’ first names, one of their last names, and one called “dollars per hit”.
-- You can calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001. Recall you can use AS to rename a column.
-- Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
-- Sort the table by the “dollars per hit” column, least to most expensive. If two players have the same “dollars per hit”, order by first name, followed by last name, in alphabetical order.
-- As in 10.sql, ensure that the salary’s year and the performance’s year match.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.

SELECT "first_name", "last_name", ("salary"/"H") "dollars per hit" FROM (

"players"

    JOIN

        (SELECT "player_id", "salary", "year"  FROM "salaries") AS salariess
        ON players.id = salariess.player_id
        JOIN
            (SELECT "player_id", "H", performances.year FROM
            "performances"
            EXCEPT
            SELECT "player_id", "H", performances.year FROM "performances" WHERE "H" = 0 OR "year" NOT IN (2001)

            ) AS performancess
            ON performancess.player_id = salariess.player_id AND performancess.year = salariess.year)



 AS "tables"
ORDER BY "dollars per hit" ASC, "first_name", "last_name" LIMIT 10;




            )



 AS "tables"



ORDER BY "dollars per hit" ASC, "first_name", "last_name" LIMIT 10;