-- ===========================
-- DATA ANALYSIS
-- ===========================


-- KPI --

-- Total Trips 

SELECT COUNT(*) AS total_trips
FROM yellow_taxi;


-- Total Revenue

SELECT ROUND(SUM(total_amount), 2) AS total_revenue
FROM yellow_taxi;


-- Average Trip Value 

SELECT ROUND(AVG(total_amount), 2) AS avg_trip_value
FROM yellow_taxi;


-- HOURLY TRIPS --

SELECT
    EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips
FROM yellow_taxi
GROUP BY pickup_hour
ORDER BY pickup_hour;

SELECT
    EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_revenue_per_trip
FROM yellow_taxi
GROUP BY pickup_hour
ORDER BY pickup_hour;


-- WEEKDAY VS WEEKEND --

SELECT
    CASE
        WHEN EXTRACT(DOW FROM tpep_pickup_datetime) IN (0, 6)
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_revenue
FROM yellow_taxi
GROUP BY day_type
ORDER BY total_trips DESC;


-- TOP PICKUP LOCATIONS --

SELECT
    pulocation_id,
    COUNT(*) AS total_trips
FROM yellow_taxi
GROUP BY pulocation_id
ORDER BY total_trips DESC;


-- PAYMENT TYPE --

SELECT
    payment_type,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM yellow_taxi
GROUP BY payment_type
ORDER BY total_trips DESC;


-- DISTANCE VS REVENUE --

SELECT 
    ROUND(trip_distance, 0) AS distance_miles,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_revenue
FROM yellow_taxi
WHERE trip_distance > 0
GROUP BY distance_miles
ORDER BY distance_miles; 


-- REVENUE CONTRIBUTION PER HOUR --

SELECT
    EXTRACT(HOUR FROM tpep_pickup_datetime) AS pickup_hour,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(
        SUM(total_amount) * 100.0 /
        SUM(SUM(total_amount)) OVER (),
        2
    ) AS revenue_percentage
FROM yellow_taxi
WHERE total_amount > 0
GROUP BY pickup_hour
ORDER BY total_revenue DESC;


-- AVERAGE FARE PER MILE --

SELECT
    ROUND(trip_distance, 0) AS distance_miles,
    COUNT(*) AS total_trips,
    ROUND(AVG(total_amount), 2) AS avg_trip_value,
    ROUND(
        AVG(total_amount / NULLIF(trip_distance, 0)),
        2
    ) AS avg_revenue_per_mile
FROM yellow_taxi
WHERE trip_distance > 0
    AND total_amount > 0
GROUP BY distance_miles
ORDER BY distance_miles;


-- WEEKEND VS WEEKDAY V2 --

SELECT
    CASE
        WHEN EXTRACT(DOW FROM tpep_pickup_datetime) IN (0, 6)
            THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    COUNT(*) AS total_trips,
    ROUND(SUM(total_amount), 2) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS avg_trip_value,
    ROUND(AVG(trip_distance), 2) AS avg_trip_distance
FROM yellow_taxi
WHERE total_amount > 0
GROUP BY day_type
ORDER BY total_revenue DESC;
