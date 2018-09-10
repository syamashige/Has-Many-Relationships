-- ***** SET UP SCHEMA AND RELATIONSHIPS ***** --

-- Create a new postgres user named 'has_many_user' 
CREATE ROLE has_many_user;

-- Create a new database named 'has_many_blogs' owned by 'has_many_user'
CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

-- Before each create table statement, add a drop table if exists statement 
-- Tables: users, posts, comments, relationship table

-- DROP TABLE users, posts, comments, relationships;

-- In 'has_many_blogs.sql' create the tables (including any PKs, Indexes, and Constraints that you may need) to fulfill the requirements sof the schema below 
-- Create the necessary FKs needed to relate the tables according to the relationship table below 
-- Run the provided 'scripts/blog_data.sql'

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    username VARCHAR (90) NOT NULL, 
    first_name VARCHAR (90) NULL DEFAULT NULL, 
    last_name VARCHAR (90) NULL DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now() 
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY, 
    title VARCHAR (180) NULL DEFAULT NULL, 
    url VARCHAR (510) NULL DEFAULT NULL, 
    content TEXT NULL DEFAULT NULL, 
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
    id SERIAL PRIMARY KEY, 
    body VARCHAR (510) NULL DEFAULT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(), 
    updated_at TIMESTAMP NOT NULL DEFAULT now()
);

-- DROP TABLE IF EXISTS relationship_table; 
-- CREATE TABLE relationship_table (
--     users 
-- );