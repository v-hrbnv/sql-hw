CREATE TABLE Attachments (
	ID int NOT NULL,
	Img_url varchar(255) NOT NULL,
	Post_id NOT NULL
	Created_date DATETIME,
	PRIMARY KEY CLUSTERED (ID),
	FOREIGN KEY (Post_id) REFERENCES Posts(ID)
);