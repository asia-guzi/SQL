



CREATE TABLE "passengers" (
    "id" INT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" NUMERIC NOT NULL,
 PRIMARY KEY (id));

CREATE TABLE "check_ins" (
    "id" INT,
    "passenger_id" INT NOT NULL,
    "check_in_time" DATETIME NOT NULL,
    "flight_id" INT NOT NULL,

 PRIMARY KEY (id),
 FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
FOREIGN KEY ("flight_id") REFERENCES "flights"("id"));

CREATE TABLE "airlines" (
    "id" INT,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
 PRIMARY KEY (id));

CREATE TABLE "flights" (
    "id" INT,
    "number" NUMERIC NOT NULL,
    "airline_id" INT NOT NULL,
    "start_airport" TEXT NOT NULL,
    "end_airport" TEXT NOT NULL,
    "time_of_departure" DATETIME NOT NULL,
    "time_of_arrival" DATETIME NOT NULL,

 PRIMARY KEY (id),
 FOREIGN KEY ("airline_id") REFERENCES "airlines"("id"));


