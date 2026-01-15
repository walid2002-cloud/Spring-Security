-- Data Insertion (Passwords are BCrypt encoded)
-- Note: Using INSERT IGNORE to avoid duplicate key errors on restart

INSERT IGNORE INTO users VALUES('user', '{bcrypt}$2a$14$tEnq90/CcR320dWQ.NdQLuj326PmgLzMGmFkUUOHQrbjPWpIKK67i', true);
INSERT IGNORE INTO users VALUES('admin', '{bcrypt}$2a$14$tJANh4xMR7qNjwwftmoZjezhpórP.RVUtIFXFBF6maQvqGXwvM4JS', true);
INSERT IGNORE INTO users VALUES('user1', '{bcrypt}$2a$14$tEnq90/CcR320dWQ.NdQLuj326PmgLzMGmFkUUOHQrbjPWpIKK67i', true);

INSERT IGNORE INTO authorities VALUES ('user', 'ROLE_USER');
INSERT IGNORE INTO authorities VALUES ('admin', 'ROLE_USER');
INSERT IGNORE INTO authorities VALUES ('admin', 'ROLE_ADMIN');
INSERT IGNORE INTO authorities VALUES ('user1', 'ROLE_USER');

-- Sample notes data
INSERT IGNORE INTO notes (id, username, matiere, note) VALUES (1, 'user', 'Mathematics', 85);
INSERT IGNORE INTO notes (id, username, matiere, note) VALUES (2, 'user', 'Physics', 78);
INSERT IGNORE INTO notes (id, username, matiere, note) VALUES (3, 'user1', 'Chemistry', 92);
INSERT IGNORE INTO notes (id, username, matiere, note) VALUES (4, 'admin', 'Biology', 88);
