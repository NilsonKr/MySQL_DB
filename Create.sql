CREATE TABLE IF NOT EXISTS books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  author_id INT NOT NULL,
  title VARCHAR(100) NOT NULL,  
  `year` TIMESTAMP DEFAULT '1990-01-01',
  `language` VARCHAR(2) NOT NULL COMMENT 'ISO 639-1 languages',
  price DECIMAL(7,2)  NOT NULL DEFAULT 10.00,
  sellable TINYINT DEFAULT 1,
  copies INT NOT NULL DEFAULT 1,
  description TEXT
);


CREATE TABLE IF NOT EXISTS authors (
  id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50),
  country VARCHAR(3) 
);


CREATE TABLE clients (
  client_id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  birthdate DATETIME,
  gender ENUM('F', 'M', 'ND') NOT NULL,
  active TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT  CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE operations (
  operation_id INT PRIMARY KEY AUTO_INCREMENT,
  book_id INT NOT NULL,
  client_id INT NOT NULL,
  `type` ENUM('B', 'R', 'S') NOT NULL COMMENT 'B=borrowed R=returned S=sold', 
  finished TINYINT DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);