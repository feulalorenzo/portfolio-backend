DROP DATABASE IF EXISTS portfolio_db;
CREATE DATABASE IF NOT EXISTS portfolio_db;

USE portfolio_db;

CREATE TABLE profile_info (
	id INT PRIMARY KEY DEFAULT 1,
    my_name VARCHAR(100) NOT NULL,
    my_role VARCHAR(100) NOT NULL,
    availability_text VARCHAR(100) NOT NULL,
    hero_bio TEXT,
    about_title VARCHAR(150),
    about_bio TEXT,
    years_exp VARCHAR(20),
    projects_done VARCHAR(20),
    cv_url VARCHAR(255)
);

CREATE TABLE social_links (
	id INT AUTO_INCREMENT PRIMARY KEY,
    platform VARCHAR(50) NOT NULL,
	url VARCHAR(255) NOT NULL
);

CREATE TABLE skills (
	id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(50) NOT NULL,
    percentage INT NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE certificates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    certificate_issuer VARCHAR(150) NOT NULL,
    date_year VARCHAR(20) NOT NULL,
    credential_url VARCHAR(255) DEFAULT '#'
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    tags VARCHAR(255) NOT NULL,
    github_url VARCHAR(255) DEFAULT '#',
    live_url VARCHAR(255) DEFAULT '#'
);

CREATE TABLE messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sender_name VARCHAR(100) NOT NULL,
    sender_email VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



