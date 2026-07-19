drop database if exists accademy;
create database accademy;
use accademy;


create table alumni (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(1000),
    email VARCHAR(1000),
    graduation_year INT,
    field_of_study VARCHAR(1000),
    current_job_title VARCHAR(1000),
    company VARCHAR(1000),
    location VARCHAR(1000),
    linkedin VARCHAR(1000),
    password VARCHAR(225),
    USN_no VARCHAR(225),
    status VARCHAR(225) DEFAULT 'pending',
    img LONGBLOB
    );


CREATE TABLE chats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sender_id INT,
    receiver_id INT,
    msg VARCHAR(10000),
    sent_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(500),
    description VARCHAR(10000),
    date VARCHAR(225),
    time TIME DEFAULT CURRENT_TIMESTAMP,
    amount INT
);


CREATE TABLE gallery (
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_name VARCHAR(500),
    img LONGBLOB,
    description VARCHAR(1000)
);


CREATE TABLE news (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(500),
    img LONGBLOB,
    description VARCHAR(1000),
    link VARCHAR(1000),
    date VARCHAR(225)
);


CREATE TABLE acheivers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(500),
    img LONGBLOB,
    batch INT,
    department VARCHAR(1000),
    description VARCHAR(1000)
);


CREATE TABLE payments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    alumni_id INT,
    event_id INT,
    status VARCHAR(500) DEFAULT 'pending'
);


