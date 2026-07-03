-- Reference schema for portfolio_db (MySQL 8+)
-- Note: you don't need to run this manually — Spring Boot's
-- `spring.jpa.hibernate.ddl-auto=update` creates these tables automatically
-- on first run, based on the JPA entities. This file is here so you can see
-- the shape of the database, or create it by hand if you prefer.

ALTER USER 'root'@'localhost' IDENTIFIED BY 'Shahif@21';

CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

CREATE TABLE profile (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(255),
  title VARCHAR(255),
  location VARCHAR(255),
  phone VARCHAR(50),
  email VARCHAR(255),
  linkedin_url VARCHAR(255),
  summary VARCHAR(2000)
);

CREATE TABLE experience (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  company VARCHAR(255),
  role VARCHAR(255),
  start_date VARCHAR(50),
  end_date VARCHAR(50)
);

CREATE TABLE experience_bullets (
  experience_id BIGINT,
  bullet VARCHAR(1000),
  bullet_order INT,
  FOREIGN KEY (experience_id) REFERENCES experience(id)
);

CREATE TABLE skill (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(255),
  items VARCHAR(500)
);

CREATE TABLE project (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  tech_stack VARCHAR(255),
  description VARCHAR(1000)
);

CREATE TABLE achievement (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(1000)
);

CREATE TABLE certification (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  issuer VARCHAR(255),
  issued_date VARCHAR(50)
);

CREATE TABLE education (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  degree VARCHAR(255),
  institution VARCHAR(255),
  duration VARCHAR(100),
  cgpa VARCHAR(20)
);

CREATE TABLE contact_message (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  message VARCHAR(2000) NOT NULL,
  submitted_at DATETIME
);
