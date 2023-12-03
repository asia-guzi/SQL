-- In 12.sql, count the number of unique episode titles.

SELECT count(DISTINCT("title")) AS "Number of unique episode titles" FROM "episodes";
