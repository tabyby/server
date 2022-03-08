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
);
CREATE TABLE appointment (
   id_appointment int NOT NULL AUTO_INCREMENT,
  date varchar(255),
  name varchar(50),
  dateOfBirth varchar(50),
   PRIMARY KEY(id_appointment)
);



/*  Execute this file from the command line by typing:
 *    mysql -u root -p <database-mysql/schema.sql
 *  to create the database and the tables.*/


 /*
 dummy data will be inserted with the command   mysql -u root -p <database-mysql/schema.sql 
 use it once
 */

 
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (1, "med amine", "20/03/2000" , "march 24 , 2022 8:00:00");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (2, "oussama hmaied", "01/01/2002" , "march 24 , 2022 8:35:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (3, "mohamed firas ", "10/03/1998" , "march 24 , 2022 11:00:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (4, "amine beji", "15/05/2000" ,"march 24 , 2022 12:00:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (5, "mariem deriouch", "09/05/2002" ,"march 24 , 2022 9:30:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (6, "med ismail ", "30/02/1995" ,"march 24 , 2022 11:35:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (7, "yassine ben mohamed", "07/01/1998" ,"march 24 , 2022 14:15:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (8, "tayssir mohamed", "20/03/2005" ,"march 24 , 2022 15:00:00 ");
INSERT INTO appointment (id_appointment, name , dateOfBirth , date) VALUES (9, "manar ben ismail", "11/07/2000" ,"march 24 , 2022 16:30:00 ");

