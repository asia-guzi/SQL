

CREATE TABLE "users" (
    "id" INT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE "snu"(
    "id" INT,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT,
    "foundation_year" INT,
PRIMARY KEY (id)
);

CREATE TABLE "companies"(
    "id" INT,
    "name" TEXT NOT NULL,
    "industry" TEXT,
    "location" TEXT,
PRIMARY KEY ("id")
);

CREATE TABLE "career"(
    "id" INT,
    "user_id" INT,
    "job" TEXT,
    "start" DATETIME,
    "end" DATETIME,
    "job_title" TEXT,

    PRIMARY KEY (id),
    FOREIGN KEY ("job") REFERENCES "companies"("id"));



CREATE TABLE "education"(
    "id" INT,
    "user_id" INT,
    "education" TEXT,
    "start" DATETIME,
    "end" DATETIME,
    "degree" TEXT,
PRIMARY KEY (id),
FOREIGN KEY ("education") REFERENCES "snu"("id"));



CREATE TABLE "network"(
    "id" INT,
    "friend1" INT NOT NULL,
    "friend2"INT NOT NULL
    CHECK ("friend2" != "friend1"),
PRIMARY KEY (id),
FOREIGN KEY ("friend1") REFERENCES "users"("id"),
FOREIGN KEY ("friend2") REFERENCES "users"("id")

);
