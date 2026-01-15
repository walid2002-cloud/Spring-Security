-- Spring Security JDBC Tables
CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(200) NOT NULL PRIMARY KEY,
    password VARCHAR(500) NOT NULL,
    enabled BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS authorities (
    username VARCHAR(200) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES users (username),
    CONSTRAINT username_authority UNIQUE (username, authority)
);

-- Notes table for the application
CREATE TABLE IF NOT EXISTS notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(200) NOT NULL,
    matiere VARCHAR(100) NOT NULL,
    note INT NOT NULL
);
