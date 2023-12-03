SELECT count("first_name") AS "Players are born or had the last game in 1990"
    FROM "players" WHERE ("final_game"  LIKE '1990%') OR ("birth_day" LIKE '1990%');
