-- *** The Lost Letter ***
SELECT "action", "timestamp", "address_id" FROM "scans" WHERE "package_id" = (
SELECT "id" FROM "packages" WHERE "contents" LIKE '%congrat%');

SELECT "address", "type" FROM "addresses" WHERE "id" = '854';



-- *** The Devious Delivery ***

-- SELECT "id", "contents", "from_address_id" FROM "packages" WHERE "contents" LIKE '%duck%';


SELECT "id", "contents", "from_address_id" FROM "packages" WHERE "from_address_id" IS NULL;

SELECT "action", "timestamp", "address_id" FROM "scans" WHERE "package_id" IN (5098);

SELECT "address", "type" FROM "addresses" WHERE "id" ="348";


-- *** The Forgotten Gift ***

    SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = ( SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street')
    AND "to_address_id" = ( SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place') ;

    SELECT "address_id", "action", "timestamp", "driver_id" FROM "scans" WHERE "package_id" = 9523;
    SELECT "address" FROM "addresses" WHERE "id" = '7432';

SELECT "name" FROM "drivers" WHERE "id"=17;
