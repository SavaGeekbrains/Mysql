use magaz;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(255),
  updated_at varchar(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at,created_at,updated_at) VALUES
  ('1', '1990-10-05','20.10.2017 8:10','20.10.2017 8:10'),
  ('2', '1984-11-12','20.10.2017 8:10','20.10.2017 8:10'),
  ('3', '1985-05-20','20.10.2017 8:10','20.10.2017 8:10'),
  ('4', '1988-02-14','20.10.2017 8:10','20.10.2017 8:10'),
  ('5', '1998-01-12','20.10.2017 8:10','20.10.2017 8:10'),
  ('6', '1992-08-29','20.10.2017 8:10','20.10.2017 8:10');
  update users SET 
  created_at = STR_TO_DATE(created_at, '%d.%m.%y %k:%i'),
  updated_at = STR_TO_DATE(updated_at, '%d.%m.%y %k:%i');
  
  Select * from users;
  ALTER TABLE
  users
  CHANGE
  created_at created_at
   datetime default current_timestamp;
   ALTER TABLE
  users
  CHANGE
  updated_at updated_at
   datetime default current_timestamp;