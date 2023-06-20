CREATE DATABASE legtopiaonthego;
use legtopiaonthego;
CREATE TABLE FoodDeliver_Orders(
Order_Id int not null,
foodDeliveryboy_Id int,
Pickup_Time VARCHAR(19),
Distance VARCHAR(20),
Duration VARCHAR(20),
Cancellation VARCHAR(20),
PRIMARY KEY(Order_Id));

INSERT INTO FoodDeliver_Orders(Order_Id,foodDeliveryboy_Id,Pickup_Time,Distance,Duration,Cancellation) VALUES
(1,12341,'2023-06-20 12:30:00','5km','20minutes','no'),
(2,12342,'2023-09-13 14:13:00','6km','10minutes','yes'),
(3,12343,'2023-10-12 11:10:00','10km','5minutes','no'),
(4,12344,'2023-07-10 9:10:00','9km','6minutes','yes'),
(5,12345,'2023-08-13 8:10:00','10km','7minutes','no');

CREATE TABLE FoodDeliverBoy(
Fooddeliveryboy int not null,
Registration_Date DATE,
PRIMARY KEY(Fooddeliveryboy));

INSERT INTO FoodDeliverBoy(Fooddeliveryboy, Registration_Date) VALUES 
(12345, '2023-06-20'),
(12346, '2020-08-21'),
(12347, '2022-03-10'),
(12348, '2023-04-04'),
(12349, '2022-08-09');

CREATE TABLE Customer_Orders(
Order_Id int not null,
Customer_Id int,
Chickens_Id int,
Exclusions VARCHAR(10),
Extras VARCHAR(10),
Order_Date TIMESTAMP,
PRIMARY KEY(Order_Id));

INSERT INTO Customer_Orders (Order_Id, Customer_Id, Chickens_Id, Exclusions, Extras, Order_Date) VALUES 
(1, 12345, 98765, 'No Sauce', 'Extra Cheese', '2023-06-20 12:30:00'),
(2, 12346, 98766, 'With Sauce', 'No Cheese', '2023-07-08 9:20:00'),
(3, 12347, 98767, 'No Sauce', 'Extra Cheese', '2020-08-10 10:10:00'),
(4, 12348, 98768, 'With Sauce','No Cheese', '2020-09-11 8:30:00'),
(5, 12349, 98769, 'No Sauce', 'Extra Cheese', '2020-09-07 7:10:00');


CREATE TABLE Chicken_Flavor(
Chickens_Id int not null,
ChickensFlavor_Id TEXT);

INSERT INTO Chicken_Flavor (Chickens_Id, ChickensFlavor_Id) VALUES 
(12345, 'SPICY'),
(12346, 'SWEETS'),
(12347, 'SOUR'),
(12348, 'SPICY'),
(12349, 'SWEETS');


CREATE TABLE Chickens_Spacial_Flavor(
Chickens_Id int not null,
Toppings TEXT,
PRIMARY KEY (Chickens_Id ));

INSERT INTO Chickens_Spacial_Flavor (Chickens_Id, Toppings) VALUES 
(12345, 'Mushrooms, Onions, Cheese'),
(12346, 'GARLIC,POTATO,CHEESE'),
(12347, 'Mushrooms, Swiss,Cheese'),
(12348, 'Jalapenos, Pepper Jack Cheese'),
(12349, 'Barbecue Sauce, Cheddar Cheese');

CREATE TABLE Chicken_Extra_Toppings(
Topping_Id int not null,
Topping_Name TEXT,
primary key(Topping_Id));


INSERT INTO Chicken_Extra_Toppings (Topping_Id, Topping_Name) VALUES 
(1, 'Bacon'),
(2, 'Mushroom'),
(3, 'barbecue Sauce'),
(4, 'Pineapple'),
(5, 'Black Olives');









