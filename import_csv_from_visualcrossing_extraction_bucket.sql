CREATE TABLE public.weather_table (
    name VARCHAR(255),
    datetime TIMESTAMP,
    temp DECIMAL(10,2),
    feelslike DECIMAL(10,2),
    dew DECIMAL(10,2),
    humidity DECIMAL(10,2),
    precip DECIMAL(10,2),
    precipprob INT,
    preciptype VARCHAR(255),
    snow DECIMAL(10,2),
    snowdepth DECIMAL(10,2),
    windgust DECIMAL(10,2),
    windspeed DECIMAL(10,2),
    winddir DECIMAL(10,2),
    sealevelpressure DECIMAL(10,2),
    cloudcover DECIMAL(10,2),
    visibility DECIMAL(10,2),
    solarradiation INT,
    solarenergy DECIMAL(10,2),
    uvindex INT,
    severerisk INT,
    conditions VARCHAR(255),
    icon VARCHAR(255),
    stations VARCHAR(255)
);

COPY public.weather_table
  FROM 's3://visualcrossing-extraction-bucket/weather-data.csv'
  IAM_ROLE 'arn:aws:iam::134359885202:role/service-role/AmazonRedshift-CommandsAccessRole-20230524T170524'
  CSV IGNOREHEADER 1
  TIMEFORMAT 'auto'
  DELIMITER ','
  REGION 'ap-southeast-1';
