CREATE DATABASE login_system;

USE login_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, password) VALUES
('admin', '$2y$10$ZzhFnv18c9kxv8hTQBiCuO1.NxGBHhnJCHD5Oj.u3z/nRl2TOFTPO'); -- Password é 'password123' (hash)
