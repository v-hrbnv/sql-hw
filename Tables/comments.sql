CREATE TABLE Comments (
	ID int NOT NULL,
	Text varchar(255) NULL,
	Post_id NOT NULL
	Author_id int NOT NULL,
	Created_date DATETIME,
	PRIMARY KEY CLUSTERED (ID),
	CONSTRAINT FK_UserComment FOREIGN KEY (Author_id) REFERENCES Users(ID)
	CONSTRAINT FK_PostComment FOREIGN KEY (Post_id) REFERENCES Posts(ID)
);