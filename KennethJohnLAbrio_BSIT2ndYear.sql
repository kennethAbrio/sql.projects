CREATE DATABASE One_piece;
USE One_piece;
CREATE TABLE Characters(
ID int not null,
First_Name VARCHAR(50),
Age int,
PRIMARY KEY(ID));

INSERT INTO Characters(ID,First_Name,Age) VALUES 
(1,'LUFFY',19),
(2,'ZORO',21),
(3,'ROBIN',21),
(4,'NAMI',20),
(5,'SANJI',19),
(6,'JINBEI',23),
(7,'CHOPPER',21),
(8,'FRANKY',20),
(9,'BROOK',21),
(10,'UUSOP',21);


USE One_piece;
CREATE TABLE Hobbies (
  id INT,
  character_id INT,
  hobby VARCHAR(255),
  PRIMARY KEY(id));
  
  INSERT INTO Hobbies(id,character_id,hobby) VALUES 
(1,1,'EATING MEAT'),
(2,8,'TRAINING'),
(3,3,'GROWING PLANTS'),
(4,4,'NAVIGATING'),
(5,1,'COOKING'),
(6,6,'RIDING A BOAT'),
(7,2,'HEALING'),
(8,9,'TRAINING'),
(9,10,'SHIPWRITE'),
(10,5,'EATING');


  USE One_piece;
  CREATE TABLE Antagonists(
  ID INT,
  First_Name VARCHAR(50),
  Rank_Strength int,
  Skills VARCHAR(50),
  PRIMARY KEY(ID));
  
    INSERT INTO Antagonists (ID,First_Name,Rank_Strength,Skills ) VALUES 
  (1, 'Donquixote Doflamingo', 90, 'String-String Fruit powers'),
  (2, 'Rob Lucci', 80, 'Rokushiki techniques'),
  (3, 'Akainu', 100, 'Magma-Magma Fruit powers'),
  (4, 'Charlotte Katakuri', 85, 'Mochi-Mochi Fruit powers'),
  (5, 'Blackbeard', 95, 'Yami-Yami Fruit powers'),
  (6,'Queen',75,'Ryu Ryu no Mi, Model'),
  (7,'Bartholomew Kuma',60,'GAS GAS FRUIT');
  
  SELECT c.First_name, c.age, h.hobby
FROM Characters c
INNER JOIN Hobbies h ON c.id = h.character_id;

  SELECT ch.First_name, ch.age, ch.hobby, a.First_name AS antagonist_name
FROM (
  SELECT c.First_name, c.age, h.hobby, h.character_id
  FROM Characters c
  INNER JOIN Hobbies h ON c.id = h.character_id
) AS ch
INNER JOIN Antagonists a ON ch.character_id = a.id
WHERE a.rank_strength >= 70;

  