CREATE DATABASE IF NOT EXISTS employeeSystem;
USE employeeSystem;

CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    age INT unsigned, 
    country VARCHAR(50), 
    position VARCHAR(50), 
    wage FLOAT NOT NULL
);

-- Drop user if exists, then create (avoid errors)
DROP USER IF EXISTS 'test'@'localhost';
CREATE USER 'test'@'localhost' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'test'@'localhost';

DROP USER IF EXISTS 'test'@'%';
CREATE USER 'test'@'%' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'test'@'%';

FLUSH PRIVILEGES;

ALTER USER 'test'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';
ALTER USER 'test'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';

FLUSH PRIVILEGES;
