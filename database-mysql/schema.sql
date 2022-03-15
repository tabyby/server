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
  profilePicture varchar(500) NOT NULL,
  university varchar(250) NOT NULL,
  yearsofexperience varchar(250) NOT NULL,
  cnam varchar(50) NOT NULL,
  latitude varchar(250) NOT NULL,
  longtitude varchar(250) NOT NULL,
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
CREATE TABLE admins (
   id int NOT NULL AUTO_INCREMENT,
   email varchar(50) NOT NULL UNIQUE,
   password varchar(200) NOT NULL,
   PRIMARY KEY (ID)
);
CREATE TABLE appointment (
  id_appointment int NOT NULL AUTO_INCREMENT,
  time int NOT NULL (255),
  date varchar(255),
  name varchar(50),
  dateOfBirth varchar(50),
  PRIMARY KEY(id_appointment)
);



/*  Execute this file from the command line by typing:
 *  mysql -u root -p <database-mysql/schema.sql
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
INSERT INTO users (id, userName , email , password,phoneNumber) VALUES (1, "med khalil", "medkhalil@gmail.com" ,"123456789 ",20553669);
INSERT INTO users (id, userName , email , password,phoneNumber) VALUES (2, "mariem becha", "mariem21@gmail.com" ,"qbcd12345 ",21003669);
INSERT INTO users (id, userName , email , password,phoneNumber) VALUES (3, "med amine", "amine@gmail.com" ,"password123 ",97885336);
INSERT INTO users (id, userName , email , password,phoneNumber) VALUES (4, "saif eddin", "saifEddin@gmail.com" ,"azerty123 ",21002006);
INSERT INTO users (id, userName , email , password,phoneNumber) VALUES (5, "oussama dbich", "oussama06@gmail.com" ,"12300532 ",55663352);
INSERT INTO doctor (id,categoryId, firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (1,1, "Mohamed ", "mokhtar" ,"medmokhtar@gmail.com ",123456,20220369,"dentist","tunisia","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrL4w1NtHPw6bxuWcWjnwWwb0gvInEe0qC9g&usqp=CAU","affordable");
INSERT INTO doctor (id,categoryId ,firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (2,2, "ismail ", "hajjri" ,"ismail10@gmail.com ",010101,21525300,"generalist","nabeul","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR00bEG-Dg_zwvNP2jW-MLoVUrngi8-jcv_Fg&usqp=CAU","affordable");
INSERT INTO doctor (id,categoryId ,firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (3,3, "Mohamed ", "amara" ,"medAmara@gmail.com ",30202,95882300,"generalist","gabes","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdYH9LOCeevgvM5rFislbyayG4ebmIjvzTjw&usqp=CAU","affordable");
INSERT INTO doctor (id,categoryId ,firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (4,4, "lotfi", "abasso" ,"lotfi02@gmail.com ",998884,72225360,"generalist","mednin","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWd4up8SXxs2T2bawqnzFpylHHlks6O-AIkQ&usqp=CAU","affordable");

