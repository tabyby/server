DROP DATABASE IF EXISTS tabyby;

CREATE DATABASE tabyby;

USE tabyby;

CREATE TABLE doctor (
  id int NOT NULL AUTO_INCREMENT,
  firstName varchar(50) NOT NULL,
  lastName varchar(50) NOT NULL,
  email varchar(50) NOT NULL UNIQUE,
  password varchar(200) NOT NULL,
  phoneNumber varchar (50) NOT NULL,
  categoryId varchar(25) NOT NULL,
  field varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  profilePicture varchar(255) NOT NULL,
  description varchar(50) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  userName varchar(50) NOT NULL,
  email varchar(50) NOT NULL UNIQUE,
  password varchar(200) NOT NULL,
  phoneNumber varchar (50) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE blogs (
  id_blog int NOT NULL AUTO_INCREMENT,
  img varchar(10000) ,
  texte varchar(255) ,
  title varchar(50) ,
  PRIMARY KEY (id_blog)
)



/*  Execute this file from the command line by typing:
 *    mysql -u root -p <database-mysql/schema.sql
 *  to create the database and the tables.*/