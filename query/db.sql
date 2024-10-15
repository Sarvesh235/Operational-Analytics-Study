/*---------------------------Creating DB----------------------------------------------------*/

CREATE DATABASE ops_analytics
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_general_ci;

/*-------------------------------------------------------------------------------------------*/

/*---------------------------Creating Tables------------------------------------------------*/

/* users Table */

CREATE TABLE users (
    user_id INT,
    created_at TIMESTAMP,
    company_id INT,
    language VARCHAR(100),
    activated_at TIMESTAMP,
    state VARCHAR(50)
);

/* Adding Data into users table */

LOAD DATA INFILE 'D:/Operational-Analytics-Study/src/data/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Checking for users table */
SELECT * FROM users LIMIT 50;

/*-----------------------------------------------------------------------------------------------*/

/* events Table */

CREATE TABLE events (
    user_id INT,
    occurred_at TIMESTAMP,
    event_type VARCHAR(50),
    event_name VARCHAR(50),
    location VARCHAR(50),
    device VARCHAR(100),
    user_type INT
);

/* Adding Data into events table */

LOAD DATA INFILE 'D:/Operational-Analytics-Study/src/data/events.csv'
INTO TABLE events
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Checking for events table */
SELECT * FROM events LIMIT 50;

/*-----------------------------------------------------------------------------------------------*/

/* email_events Table */

CREATE TABLE email_events (
    user_id INT,
    occured_at TIMESTAMP,
    action VARCHAR(100),
    user_type INT
);

/* Adding Data into email_events table */

LOAD DATA INFILE 'D:/Operational-Analytics-Study/src/data/email_events.csv'
INTO TABLE email_events
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Checking for email_events table */
SELECT * FROM email_events;

/*-----------------------------------------------------------------------------------------------*/

/* job_data Table */

CREATE TABLE job_data (
    ds DATE,
    job_id INT,
    actor_id INT,
    event VARCHAR(30),
    language VARCHAR(30),
    time_spent INT,
    org VARCHAR(30)
);

/* Adding Data into job_data table */

LOAD DATA INFILE 'D:/Operational-Analytics-Study/src/data/job_data.csv'
INTO TABLE job_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/* Checking for job_data table */
SELECT * FROM job_data;

/*-----------------------------------------------------------------------------------------------*/
