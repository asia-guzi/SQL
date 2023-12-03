-- In 7.sql, write a SQL query to count the number of players who bat (or batted)
-- right-handed and throw (or threw) left-handed, or vice versa.

SELECT count("bats") AS "Players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa"
    FROM "players" WHERE ("bats" = 'L' AND "throws"= 'R') OR ("bats" = 'R' AND "throws"= 'L');
