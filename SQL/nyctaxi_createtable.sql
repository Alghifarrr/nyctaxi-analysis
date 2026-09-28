-- CREATE TABLE --

CREATE TABLE yellow_taxi(
    vendor_id INT,
    tpep_pickup_datetime TIMESTAMP,
    tpep_dropoff_datetime TIMESTAMP,
    passenger_count NUMERIC,
    trip_distance NUMERIC,
    ratecode_id NUMERIC,
    storeandfwd_flag VARCHAR(10),
    pulocation_id INT,
    dolocation_id INT,
    payment_type INT,
    fare_amount NUMERIC,
    extra NUMERIC,
    mta_tax NUMERIC,
    tip_amount NUMERIC,
    tolls_amount NUMERIC,
    improvement_surcharge NUMERIC,
    total_amount NUMERIC,
    congestion_surcharge NUMERIC,
    airport_fee NUMERIC,
    cbd_congestion_fee NUMERIC
);


