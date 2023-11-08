-- Create Table for Data Storage
CREATE TABLE DataStorage (
    id INT PRIMARY KEY,
    source VARCHAR(50),
    value DECIMAL(10, 2),
    value_squared DECIMAL(10, 2),
    value_cubed DECIMAL(10, 2)
);

-- Insert Sample Data into DataStorage
INSERT INTO DataStorage (id, source, value, value_squared, value_cubed)
VALUES
    (1, 'Oracle', 3.50, 12.25, 42.88),
    (2, 'Hive', 4.00, 16.00, 64.00),
    (3, 'HDFS', 2.50, 6.25, 15.63),
    (4, 'Oracle', 3.85, 14.82, 57.17),
    (5, 'Hive', 4.20, 17.64, 74.09),
    (6, 'HDFS', 2.75, 7.56, 20.78),
    (7, 'Oracle', 4.00, 16.00, 64.00),
    (8, 'Hive', 3.75, 14.06, 52.69),
    (9, 'HDFS', 3.25, 10.56, 34.38),
    (10, 'Oracle', 3.65, 13.32, 48.72);

-- Query for Extracted Data from Different Sources: Calculate Average Value
SELECT source, AVG(value) AS avg_value
FROM DataStorage
GROUP BY source;

-- Transformation Query - Calculate Total Sum of Cubed Values
SELECT SUM(value_cubed) AS total_cubed
FROM DataStorage;

-- Filter Data by Source and Threshold Value
SELECT id, source, value
FROM DataStorage
WHERE source = 'Oracle' AND value > 3.0;

-- Aggregate Data by Source and Calculate Average Value
SELECT source, AVG(value) AS avg_value
FROM DataStorage
GROUP BY source;

-- Partitioning Table for Efficient Retrieval
CREATE TABLE PartitionedData AS
SELECT *
FROM DataStorage
PARTITION BY source;

-- Bucketing Table for Faster Queries
CREATE TABLE BucketedData AS
SELECT *
FROM DataStorage
CLUSTER BY value;

-- Join Data with Other Tables (e.g., User Access Information)
CREATE TABLE UserAccess (
    data_id INT,
    username VARCHAR(50)
);

INSERT INTO UserAccess (data_id, username)
VALUES
    (1, 'user1'),
    (2, 'user2'),
    (3, 'user3'),
    (4, 'user4'),
    (5, 'user5');

SELECT ds.*, ua.username
FROM DataStorage ds
JOIN UserAccess ua ON ds.id = ua.data_id;

-- Delete Old Data Beyond a Certain Date
DELETE FROM DataStorage
WHERE id >= 6;
