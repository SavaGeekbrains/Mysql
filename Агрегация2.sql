use magaz;

select name,birthday_at From users;
select month(birthday_at),day(birthday_at) from users;
select Date(CONCAT_WS('-',year(NOW()),month(birthday_at),day(birthday_at))) from users;
select date_format(date(CONCAT_WS('-',year(NOW()),month(birthday_at),day(birthday_at))),'%W') AS day
from users Group by day;
select date_format(date(CONCAT_WS('-',year(NOW()),month(birthday_at),day(birthday_at))),'%W') AS day
COUNT(*) AS total from users Group by day;
select date_format(date(CONCAT_WS('-',year(NOW()),month(birthday_at),day(birthday_at))),'%W') AS day,
COUNT(*) AS total from users Group by day order by total desc;