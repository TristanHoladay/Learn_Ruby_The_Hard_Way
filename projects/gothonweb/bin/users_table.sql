-- DROP TABLE users;

CREATE table users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL
);