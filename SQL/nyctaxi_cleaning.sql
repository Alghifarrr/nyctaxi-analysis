-- ===========================
-- DATA VALIIDATION
-- ===========================


-- CHECK INVALID VALUES --

SELECT
    COUNT(*) FILTER (WHERE trip_distance <= 0) AS invalid_distance,
    COUNT(*) FILTER (WHERE total_amount <= 0) AS invalid_totalamount,
    COUNT(*) FILTER (
        WHERE tpep_dropoff_datetime <= tpep_pickup_datetime 
    ) AS invalid_duration
FROM yellow_taxi;

SELECT
    trip_distance,
    COUNT(*) AS total
FROM yellow_taxi
WHERE trip_distance <= 0
GROUP BY trip_distance
ORDER BY trip_distance;

SELECT
    total_amount,
    COUNT(*) AS total
FROM yellow_taxi
WHERE total_amount <= 0
GROUP BY total_amount
ORDER BY total_amount;

SELECT
    tpep_pickup_datetime,
    tpep_dropoff_datetime,
    tpep_dropoff_datetime - tpep_pickup_datetime AS duration
FROM yellow_taxi
WHERE tpep_dropoff_datetime <= tpep_pickup_datetime
LIMIT 10;



-- ===========================
-- DATA CLEANING
-- ===========================

DELETE FROM yellow_taxi
WHERE trip_distance <= 0
    OR tpep_dropoff_datetime <= tpep_pickup_datetime;

UPDATE yellow_taxi
SET passenger_count = NULL
WHERE passenger_count = 0;
