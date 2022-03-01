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
  field varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  profilePicture varchar(50) NOT NULL,
  description varchar(50) NOT NULL,
  PRIMARY KEY (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root -p <database-mysql/schema.sql
 *  to create the database and the tables.*/