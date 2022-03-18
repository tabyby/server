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
  description varchar(50) NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE users (
  id_user int NOT NULL AUTO_INCREMENT,
  userName varchar(50) NOT NULL,
  email varchar(50) NOT NULL UNIQUE,
  password varchar(200) NOT NULL,
  phoneNumber varchar (50) NOT NULL,
  PRIMARY KEY (id_user)
);
CREATE TABLE blogs (
  id_blog int NOT NULL AUTO_INCREMENT,
  img varchar(10000) ,
  texte varchar(2000) ,
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
   phoneNum varchar(100),
  beenThere varchar(50),
  diseases varchar(100),
  date varchar(255),
  name varchar(50),
  dateOfBirth varchar(50),
  phoneNumber varchar(25),
  time varchar(25),
  id_user int,
  id int,
   PRIMARY KEY(id_appointment),
   FOREIGN KEY (id) REFERENCES doctor(id) ,
      FOREIGN KEY (id_user) REFERENCES users(id_user) 

);



/*  Execute this file from the command line by typing:
 *    mysql -u root -p <database-mysql/schema.sql
 *  to create the database and the tables.*/


 /*
 dummy data will be inserted with the command   mysql -u root -p <database-mysql/schema.sql 
 use it once
 */

 
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (1, 20220369,"no"," Allergie","med amine", "20/03/2000" , "march 24 , 2022 8:00:00");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (2,20220332 ,"yes", "Diarrhea","oussama hmaied", "01/01/2002" , "march 24 , 2022 9:30:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (3, 21220330,"yes","Headache" ,"mohamed firas ", "10/03/1998" , "march 24 , 2022 11:00:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (4, 21002220 ,"yes","Stomach Aches" ,"amine beji", "15/05/2000" ,"march 24 , 2022 12:00:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (5, 95225002 ,"yes","Cold and Flu" ,"mariem deriouch", "09/05/2002" ,"march 24 , 2022 9:30:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (6, 28825369 ,"no", "Covid 19" ,"med ismail ", "30/02/1995" ,"march 24 , 2022 11:35:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (7, 29885336 , "no","Covid 19" , "yassine ben mohamed", "07/01/1998" ,"march 24 , 2022 14:15:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (8, 95200220 ,"no", "Stomach Aches", "tayssir mohamed", "20/03/2005" ,"march 24 , 2022 15:00:00 ");
INSERT INTO appointment (id_appointment ,phoneNum ,beenThere,diseases, name , dateOfBirth , date) VALUES (9, 22002336 ,"no", "Stomach Aches", "mariem ben ismail", "11/07/2000" ,"march 24 , 2022 16:30:00 ");
INSERT INTO users (id_user, userName , email , password,phoneNumber) VALUES (1, "med khalil", "medkhalil@gmail.com" ,"123456789 ",20553669);
INSERT INTO users (id_user, userName , email , password,phoneNumber) VALUES (2, "mariem becha", "mariem21@gmail.com" ,"qbcd12345 ",21003669);
INSERT INTO users (id_user, userName , email , password,phoneNumber) VALUES (3, "med amine", "amine@gmail.com" ,"password123 ",97885336);
INSERT INTO users (id_user, userName , email , password,phoneNumber) VALUES (4, "saif eddin", "saifEddin@gmail.com" ,"azerty123 ",21002006);
INSERT INTO users (id_user, userName , email , password,phoneNumber) VALUES (5, "oussama dbich", "oussama06@gmail.com" ,"12300532 ",55663352);
INSERT INTO doctor (categoryId, firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (1, "Mohamed ", "mokhtar" ,"medmokhtar@gmail.com ",123456,20220369,"dentist","tunisia","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrL4w1NtHPw6bxuWcWjnwWwb0gvInEe0qC9g&usqp=CAU","affordable");
INSERT INTO doctor (categoryId, firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (2, "ismail ", "hajjri" ,"ismail10@gmail.com ",010101,21525300,"generalist","nabeul","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR00bEG-Dg_zwvNP2jW-MLoVUrngi8-jcv_Fg&usqp=CAU","affordable");
INSERT INTO doctor (categoryId, firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (3, "Mohamed ", "amara" ,"medAmara@gmail.com ",30202,95882300,"generalist","gabes","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdYH9LOCeevgvM5rFislbyayG4ebmIjvzTjw&usqp=CAU","affordable");
INSERT INTO doctor (categoryId, firstName , lastName , email,password,phoneNumber,field,location,profilePicture,description) VALUES (4, "lotfi", "abasso" ,"lotfi02@gmail.com ",998884,72225360,"generalist","mednin","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWd4up8SXxs2T2bawqnzFpylHHlks6O-AIkQ&usqp=CAU","affordable");
INSERT INTO admins (id,email,password) VALUES (1,"medmedaminebensalah@gmail.com","123456789");
INSERT INTO admins (id,email,password) VALUES (2,"oussamahmaied@gmail.com","123456789");
INSERT INTO admins (id,email,password) VALUES (3,"badisNaceur@gmail.com","$2a$10$S5Ti.ZcihmOOmF308Hv00ujPOJ5tu11rAneSSgBsnOYaSEU81m/s.");
INSERT INTO admins (id,email,password) VALUES (4,"mortadha@gmail.com","123456789");
INSERT INTO blogs (id_blog,img,texte,title) VALUES (1,"https://i.ytimg.com/vi/KckUy7xqyxw/maxresdefault.jpg","The flu shot is your single best defense against catching influenza. Flu shots are available at all Banner Urgent Care locations. You can reserve your spot online, so you don’t have to wait.

In addition to getting vaccinated each fall, having good health habits and following the recommended safety protocols currently in place to stop the spread of COVID-19 can also help stop the spread of the flu.
To stay healthy during flu season, Banner Health recommends: Getting your flu shot by the end of October, at the latest.
Avoiding close contact with people who are sick.
-Staying home when you are sick.
-Covering your mouth and nose when coughing or sneezing.
-Washing your hands frequently.
-Avoiding touching your eyes, nose or mouth.
-It is also important for everyone 12 years of age and older to get vaccinated against COVID-19 as soon as they can. For a COVID-19 vaccine location near you, visit vaccines.gov.","COVID-19 and the Flu");

INSERT INTO blogs(id_blog,img,texte,title) VALUES (2,"https://www.news-medical.net/image.axd?picture=2021%2F2%2Fshutterstock_1707538084.jpg","COVID-19 s early symptoms aren’t drastically different from what you might see in many other common respiratory infections. Patients often present with a fever, they are tired and cough often, said Dr. Bime. According to the World Health Organization (WHO), about 80% of infections are mild or asymptomatic, 15% result in moderate to severe symptoms (requiring oxygen) and about 5% are critical infections, which require ventilation. During a severe or critical bout with COVID-19, the body has many reactions:
-Lung tissue swells with fluid, making lungs less elastic
The immune system goes into overdrive, sometimes at the expense of other organs
As your body fights one infection, it is more susceptible to additional infections
Dr. Bime added that he has seen a trend of blood clots becoming more common in COVID-19 patients. The cause of this is still uncertain.","COVID-19 and Your Lungs?");
INSERT INTO blogs(id_blog,img,texte,title) VALUES(3,"https://www.scientificanimations.com/wp-content/uploads/2020/12/Medical-Animation-Showing-Symptoms-Of-Chronic-Fatigue-Syndrome.jpg","What is chronic fatigue syndrome?
CFS is a long-term condition characterized by fatigue that worsens with exertion and makes you feel so tired that you can’t complete normal, daily activities, but does not improve with rest.
CFS is more common in younger and middle-aged women, but people of any age or gender could develop it. Genetics may also play a role.
Symptoms of chronic fatigue syndrome
If you have CFS, you might have these symptoms:
-Fatigue that doesn’t let up with rest or sleep
-Feeling extremely tired after exercising
-Trouble concentrating
-Headaches
-Joint pain","Chronic Fatigue Syndrome");
INSERT INTO blogs(id_blog,img,texte,title) VALUES(4,"https://assets.medpagetoday.net/media/images/93xxx/93227.jpg","What causes Guillain-Barré syndrome?
We don’t know what causes GBS. “Some scientists believe Guillain-Barré occurs because your body is trying to fight off an infection and mistakes your nerve cells for a virus or bacteria,” Dr. Brown said.
GBS is not contagious. Most people with GBS had an infection – diarrhea or a respiratory illness – within several weeks of developing symptoms. According to the Centers for Disease Control and Prevention (CDC), infection from the bacteria Campylobacter jejuni, which causes diarrhea, might be responsible for 40% of GBS cases in the U.S. The flu, the Zika virus, hepatitis, HIV, and trauma may also trigger GBS.
There have been some reports of people developing GBS after being infected with COVID-19. Scientists believe this may occur because COVID-19 releases inflammatory proteins that put people at risk for developing GBS.","Guillain Barre Syndrome");

INSERT INTO blogs(id_blog,img,texte,title) VALUES(5,"https://www.bannerhealth.com/healthcareblog/-/media/images/project/healthcareblog/hero-images/2021/04/covid-19-and-stroke-risk.ashx","The COVID-19 pandemic has been unpredictable as more is learned about the varied side effects of the virus. A typical respiratory infection, such as the flu, usually has a specific set of symptoms and potential complications. With COVID-19, the long-term effects range from neurological complications to loss of taste and smell, trouble focusing (“brain fog”), and chronic fatigue. Another surprising finding from several studies is the heightened risk of stroke and heart attack—and not just for older adults. People under the age of 50 appear to be at much higher risk of these complications too.
One study published in JAMA in April 2021 found that the risk of stroke was more than twice as high for COVID-19 patients when compared to people of the same age, sex, and ethnicity in the general population—82.6 cases per 100,000 people compared to 38.2 cases for those without a COVID-19 diagnosis.","covid 19 and risk of stroke");