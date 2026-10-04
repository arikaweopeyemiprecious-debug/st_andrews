CREATE DATABASE IF NOT EXISTS st_andrews;
USE st_andrews;
CREATE TABLE IF NOT EXISTS sermons (id INT NOT NULL AUTO_INCREMENT, title VARCHAR(150) NOT NULL, description TEXT, video_url VARCHAR(255), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id));
INSERT INTO sermons (title,description,video_url) SELECT 'Walking in Faith','Faith invites us to trust God even when the whole path is not yet clear.','' FROM (SELECT 1) AS x WHERE NOT EXISTS (SELECT id FROM sermons WHERE title='Walking in Faith');

CREATE TABLE IF NOT EXISTS users (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(120) NOT NULL, email VARCHAR(160) NOT NULL, password VARCHAR(64) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id), UNIQUE KEY unique_email (email));


CREATE TABLE IF NOT EXISTS family_harvest (
  id INT NOT NULL AUTO_INCREMENT,
  family_name VARCHAR(160) NOT NULL,
  harvest_date DATE NOT NULL,
  message TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY unique_harvest_date (harvest_date)
);

INSERT INTO family_harvest (family_name, harvest_date, message)
SELECT 'Family name to be announced', DATE_ADD(CURDATE(), INTERVAL (8 - DAYOFWEEK(CURDATE())) DAY), 'Join us as we celebrate God''s goodness and give thanks as a church family.'
FROM (SELECT 1) AS seed
WHERE NOT EXISTS (SELECT id FROM family_harvest WHERE harvest_date >= CURDATE());
