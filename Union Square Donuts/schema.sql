


CREATE TABLE "ingredients"(
    "id" INT,
    "name" TEXT NOT NULL,
    "unit" TEXT NOT NULL,
    "per_unit_price" TEXT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE "donuts" (
    "id" INT,
    "name" TEXT NOT NULL,
    "gluten" TEXT NOT NULL CHECK( "gluten" IN ('yes', 'no')),
    "price" INT NOT NULL,
    "is_present" TEXT NOT NULL CHECK( "is_present" IN ('yes', 'no')),

PRIMARY KEY (id)
);

CREATE TABLE "recipe" (
    "id" INT,
    "donut_id" INT,
    "ingredient_id" INT,
PRIMARY KEY (id),
FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders" (
    "number" INT NOT NULL,
    "donut_id" INT NOT NULL,
    "customer_id" INT NOT NULL,
PRIMARY KEY ("number"),
FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);


CREATE TABLE "customers" (
    "id" INT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "ordersc" INT,
PRIMARY KEY (id),
FOREIGN KEY ("ordersc") REFERENCES "orders"("id")
);

