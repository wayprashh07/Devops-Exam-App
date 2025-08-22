-- Create database
CREATE DATABASE IF NOT EXISTS devops_exam;

-- Switch to the database
USE devops_exam;

-- Drop old table if exists (for clean start)
DROP TABLE IF EXISTS results;

-- Create table results with required fields
CREATE TABLE results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    gender VARCHAR(20),
    score INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create user and grant privileges
CREATE USER IF NOT EXISTS 'exam_user'@'%' IDENTIFIED BY 'exam_pass';
GRANT ALL PRIVILEGES ON devops_exam.* TO 'exam_user'@'%';
FLUSH PRIVILEGES;
