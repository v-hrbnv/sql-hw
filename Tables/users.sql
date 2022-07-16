CREATE TABLE Users (
	ID int NOT NULL,
	Email varchar(255) NOT NULL,
	Username varchar(255) NOT NULL,
	Password_hash varchar(255) NOT NULL,
	Created_date DATETIME,
	PRIMARY KEY CLUSTERED (ID)
);