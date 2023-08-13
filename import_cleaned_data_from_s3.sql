CREATE TABLE clean_bike (
                              ride_id VARCHAR(255) PRIMARY KEY,
                              rideable_type VARCHAR(50),
                              started_at TIMESTAMP,
                              ended_at TIMESTAMP,
                              duration FLOAT8,
                              customer_type VARCHAR(50),
                              start_station_name VARCHAR(255),
                              end_station_name VARCHAR(255),
                              start_lat DOUBLE PRECISION,
                              start_lng DOUBLE PRECISION,
                              end_lat DOUBLE PRECISION,
                              end_lng DOUBLE PRECISION,
                              year VARCHAR(10),
                              month VARCHAR(10),
                              date VARCHAR(10),
                              day VARCHAR(10),
                              hour VARCHAR(10),
                              season VARCHAR(50),
                              is_holiday VARCHAR(10),
                              temp FLOAT8,
                              feelslike FLOAT8,
                              dew FLOAT8,
                              humidity FLOAT8,
                              precip FLOAT8,
                              snow FLOAT8,
                              snowdepth FLOAT8,
                              windgust FLOAT8,
                              windspeed FLOAT8,
                              winddir FLOAT8,
                              sealevelpressure FLOAT8,
                              cloudcover FLOAT8,
                              visibility FLOAT8,
                              solarradiation FLOAT8,
                              solarenergy FLOAT8,
                              uvindex VARCHAR(10),
                              severerisk VARCHAR(10),
                              conditions VARCHAR(255)
);

COPY clean_bike
    FROM 's3://cyclistic-cleaned-bucket/clean_bike.csv'
    IAM_ROLE 'arn:aws:iam::134359885202:role/service-role/AmazonRedshift-CommandsAccessRole-20230524T170524'
    REGION 'ap-southeast-1'
    DELIMITER ','
    IGNOREHEADER 1
    TIMEFORMAT 'YYYY-MM-DD HH:MI:SS';
