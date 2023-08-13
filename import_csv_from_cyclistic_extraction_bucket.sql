CREATE TABLE cyclistic_tripdata (
    ride_id VARCHAR(100), 
    rideable_type VARCHAR(100),
    started_at TIMESTAMP, 
    ended_at TIMESTAMP,
    start_station_name VARCHAR(100), 
    start_station_id VARCHAR(100),
    end_station_name VARCHAR(100), 
    end_station_id VARCHAR(100),
    start_lat DOUBLE PRECISION, 
    start_lng DOUBLE PRECISION,
    end_lat DOUBLE PRECISION, 
    end_lng DOUBLE PRECISION,
    member_casual VARCHAR(100) 
);

COPY clean_bike
    FROM 's3://cyclistic-extraction-bucket/202'
    IAM_ROLE 'arn:aws:iam::134359885202:role/service-role/AmazonRedshift-CommandsAccessRole-20230524T170524'
    REGION 'ap-southeast-1'
    DELIMITER ','
    IGNOREHEADER 1
    DATEFORMAT 'YYYY-MM-DD'
    TIMEFORMAT 'HH:MI:SS';
