CREATE DATABASE Players;
USE Players;
CREATE TABLE LosAngelesLakers(
Jersey_Number int not null,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Teams VARCHAR(50),
Age int,
Points FLOAT,
PRIMARY KEY(Jersey_Number));

INSERT INTO LosAngelesLakers(Jersey_Number,First_Name,Last_Name,Teams,Age,Points) VALUES 
(12,'MO','BAMBA','LAKERS',25,6.6),
(5,'MALIK','BEASLEY','LAKERS',26,12.7),
(7,'TRAY','BROWN','LAKERS',23,7.1),
(10,'MAX','CHRISTIE','LAKERS',20,3.1),
(3,'ANTHONY','DAVIS','LAKERS',30,25.9),
(35,'WNYEN','GABRIEL','LAKERS',26,5.5),
(28,'RUI','HACHIMURA','LAKERS',25,11.3),
(0,'SHAQUILLE','HARRIZON','LAKERS',29,8.8),
(6,'LEBRON','JAMES','LAKERS',38,28.9),
(14,'SCOTTY','PIPPENSOR','LAKERS',22,2.3),
(15,'AUSTIN','REAVES','LAKERS',20,13.0),
(1,'DANGELO','RUSSELL','LAKERS',27,17.8),
(17,'DENNIS','SCHRODER','LAKERS',29,12.9),
(20,'COLE','SWIDER','LAKERS',29,12.6);







CREATE TABLE BostonCeltics(
Jersey_Number int not null,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Teams VARCHAR(50),
Age int,
Points FLOAT,
PRIMARY KEY(Jersey_Number));

INSERT INTO BostonCeltics(Jersey_Number,First_Name,Last_Name,Teams,Age,Points) VALUES 
(13,'MALCOLM','BROGDON','CELTICS',30,14.9),
(7,'JAYTEN','BROWN','CELTICS',26,26.6),
(99,'JUSTIN','CHAMPAGNIE','CELTICS',21,2.2),
(20,'JD','DAVISON','CELTICS',20,1.6),
(8,'DANILO','GALLINANRI','CELTICS',34,11.7),
(91,'BLAKE','GRIFFIN','CELTICS',34,4.1),
(30,'SAM','HAUSER','CELTICS',25,6.4),
(42,'AL','HORFORD','CELTICS',36,9.8),
(28,'FIANDO','KABENGLE','CELTICS',25,1.5),
(40,'LUKE','KORNET','CELTICS',27,3.8),
(57,'MIKE','MUSCALA','CELTICS',31,6.1),
(11,'PAYTON','PRITCHAR','CELTICS',25,5.6),
(36,'MARCUS','SMART','CELTICS',29,11.5);

SELECT bostonceltics.Jersey_Number, bostonceltics.First_Name, losangeleslakers.Points
FROM bostonceltics join losangeleslakers on bostonceltics.Jersey_Number=losangeleslakers.Points;


SELECT losangeleslakers.Age, losangeleslakers.Points, bostonceltics.Jersey_Number FROM losangeleslakers inner join bostonceltics on 
losangeleslakers.Age=bostonceltics.Jersey_Number;



SELECT bostonceltics.Points, bostonceltics.First_Name, losangeleslakers.First_Name FROM 
bostonceltics right join losangeleslakers on bostonceltics.First_Name=losangeleslakers.First_Name;











