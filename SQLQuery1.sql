CREATE DATABASE RisottoDB
USE RisottoDB

CREATE TABLE RestaurantTable
(
	IdRestaurantTable INT IDENTITY(1,1),
	TableStatus BIT NOT NULL,
	SeatsAtTheTable INT NOT NULL,
	PRIMARY KEY(IdRestaurantTable)
)

CREATE TABLE Orders
(
	IdOrder INT IDENTITY(1,1),
	IdRestaurantTable INT NOT NULL,
	UserName VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(13) NOT NULL,
	ReservationDate DATE NOT NULL,
	ReservationTime TIME NOT NULL,
	UserEmail VARCHAR(100) NOT NULL,
	GuestCount INT NOT NULL,
	CommentOnTheOrder VARCHAR(255) NOT NULL,
	PRIMARY KEY(IdOrder),
	FOREIGN KEY (IdRestaurantTable) REFERENCES RestaurantTable(IdRestaurantTable)
)