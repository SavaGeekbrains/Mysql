use magaz;

select timestampdiff(year,birthday_at,NOW()) AS age
from users;

select avg(timestampdiff(year,birthday_at,NOW())) AS age
from users;
  