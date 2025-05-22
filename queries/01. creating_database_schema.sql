/* 
PURPOSE:
  This script creates the foundational database schema for an Instagram-style application.
  It defines a relational structure to simulate core Instagram features at a basic level,
  including users, photos, comments, likes, follows, and tags.

  The schema includes:
    - Proper use of PRIMARY and FOREIGN KEY constraints
    - Composite keys for many-to-many relationships
    - Multiple data types and default values
    - Referential integrity across related tables

  This schema serves as the backbone for running analytical queries, marketing insights, 
  and usage metrics for portfolio and project purposes.
*/
-- Create Database
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS instagram_clone;

USE instagram_clone;

-- Create Users Table
CREATE TABLE USERS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) UNIQUE NOT NULL,
    Created_at TIMESTAMP DEFAULT NOW()
);


-- Create Photo table
CREATE TABLE PHOTO (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create comment Table
CREATE TABLE comment (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(400) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photo(id)
);

-- Create Likes Table
CREATE TABLE Likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES USERS(id),
    FOREIGN KEY (photo_id) REFERENCES photo(id),
    PRIMARY KEY (user_id, photo_id)
);


-- Create table follows
CREATE TABLE Follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id, followee_id)
);


-- Create table Logic for Hashtags
CREATE TABLE TAGS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE PHOTO_TAGS (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photo(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    PRIMARY KEY (photo_id, tag_id)
);


SHOW TABLES;
