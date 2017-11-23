DROP TABLE IF EXISTS bounties;

CREATE TABLE bounties (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  value INT,
  danger_level INT,
  collected_by VARCHAR(255)  
);
