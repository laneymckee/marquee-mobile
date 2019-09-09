-- NAME DATABASE: marquee_app
--
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "watch" (
    "id" SERIAL PRIMARY KEY,
    "title" VARCHAR(50),
    "poster" VARCHAR(150),
    "backdrop" VARCHAR(150),
    "priority" VARCHAR(10),
    "completed" BOOLEAN DEFAULT false,
    "date_completed" DATE NULL,
    "user_id" INT REFERENCES "user"
);

CREATE TABLE "friend" (
    "id" SERIAL PRIMARY KEY,
    "username" INT REFERENCES "user",
    "friend" INT REFERENCES "user"
)