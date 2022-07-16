SELECT Username FROM Users;

SELECT COUNT(Username)
FROM Users
WHERE (lower(Username) LIKE '%vasya%');

SELECT TOP 10 Title, Text, Created_date
FROM Posts;

SELECT TOP 10 Posts.Title, Posts.Text, Posts.Created_date, Attachments.Img_url
FROM Posts p
LEFT JOIN Attachments ON Posts.ID = Attachments.Post_id;

SELECT TOP 10 Posts.Title, Posts.Text, Posts.Created_date, Attachments.Img_url, Users.Username
FROM Posts p
LEFT JOIN Attachments ON Posts.ID = Attachments.Post_id
LEFT JOIN Users ON Posts.Author_id = Users.ID;

SELECT AVG(a.rcount) FROM
(SELECT COUNT(*) as rcount FROM Comments c GROUP BY c.Post_id) a;

