--get all usernames
SELECT Username FROM Users;

--count users that have username like vasya
SELECT COUNT(Username)
FROM Users
WHERE (lower(Username) LIKE '%vasya%');

--get 10 first posts
SELECT TOP 10 Title, Text, Created_date
FROM Posts;

--get 10 first posts + attachments
SELECT TOP 10 Posts.Title, Posts.Text, Posts.Created_date, Attachments.Img_url
FROM Posts
LEFT JOIN Attachments ON Posts.ID = Attachments.Post_id;

--get 10 first posts + attachments + usenames
SELECT TOP 10 Posts.Title, Posts.Text, Posts.Created_date, Attachments.Img_url, Users.Username
FROM Posts
LEFT JOIN Attachments ON Posts.ID = Attachments.Post_id
LEFT JOIN Users ON Posts.Author_id = Users.ID;

--get avg number of user comments
SELECT AVG(a.rcount) FROM
(SELECT COUNT(*) as rcount FROM Comments c GROUP BY c.Post_id) a;

--get avg number of comments per user
SELECT AVG(a.rcount) FROM
(SELECT COUNT(*) as rcount FROM Comments c GROUP BY c.Author_id) a;