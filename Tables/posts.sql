CREATE TABLE Posts (
	ID int NOT NULL,
	Title varchar(255) NOT NULL,
	Text varchar(255) NOT NULL,
	Author_id int NOT NULL,
	Created_date DATETIME,
	PRIMARY KEY CLUSTERED (ID),
	FOREIGN KEY (Author_id) REFERENCES Users(ID)
);