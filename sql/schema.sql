CREATE TABLE IF NOT EXISTS traffic_accidents (
  document_type INT,
  prefecture_code INT,
  police_station_code INT,
  ticket_number INT,
  accident_details INT,
  deaths INT,
  injuries INT,
  route_code INT,
  direction INT,
  location_code INT,
  municipality_code INT,
  occurrence_year INT,
  occurrence_month INT,
  occurrence_day INT,
  occurrence_hour INT,
  occurrence_minute INT,
  day_night INT,
  weather INT,
  terrain INT,
  road_condition INT,
  road_shape INT,
  roundabout_diameter INT,
  traffic_signal INT
)
PARTITIONED BY (year STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 'hdfs://namenode/hadoop/traffic_accident_data/'
TBLPROPERTIES ("skip.header.line.count"="1");

ALTER TABLE traffic_accidents ADD
PARTITION (year='2019') LOCATION 'hdfs://namenode/hadoop/traffic_accident_data/year=2019'
PARTITION (year='2020') LOCATION 'hdfs://namenode/hadoop/traffic_accident_data/year=2020'
PARTITION (year='2021') LOCATION 'hdfs://namenode/hadoop/traffic_accident_data/year=2021';
