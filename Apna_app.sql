CREATE DATABASE apna;
USE apna;

CREATE TABLE User(
uid VARCHAR(30) PRIMARY KEY , 
Name VARCHAR(100) NOT NULL, 
Email_id VARCHAR(70) NOT NULL UNIQUE, 
Skills VARCHAR(200) NOT NULL, 
Phone_no INT(11) NOT NULL UNIQUE, 
Degree VARCHAR(200), 
Password VARCHAR(100) NOT NULL
);

CREATE TABLE Company(
cid VARCHAR(30) PRIMARY KEY , 
Name VARCHAR(100) NOT NULL, 
Email_id VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Job_seeking(jsid VARCHAR(30) PRIMARY KEY, 
user_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(user_id) REFERENCES User(uid) ON DELETE CASCADE ON UPDATE CASCADE, 
job_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(job_id) REFERENCES Jobs(jid) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Application(aid VARCHAR(30) PRIMARY KEY, 
user_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(user_id) REFERENCES User(uid) ON DELETE CASCADE ON UPDATE CASCADE, 
job_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(job_id) REFERENCES Jobs(jid) ON DELETE CASCADE ON UPDATE CASCADE, 
Status VARCHAR(50) NOT NULL
);

CREATE TABLE Feedback(fid VARCHAR(30) PRIMARY KEY, 
user_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(user_id) REFERENCES User(uid) ON DELETE CASCADE ON UPDATE CASCADE, 
company_id VARCHAR(30) NOT NULL, 
FOREIGN KEY(company_id) REFERENCES Company(cid) ON DELETE CASCADE ON UPDATE CASCADE, 
Feedback VARCHAR(300) NOT NULL
);

CREATE TABLE Jobs(jid VARCHAR(30) PRIMARY KEY, 
company_id VARCHAR(30) NOT NULL UNIQUE, 
FOREIGN KEY(company_id) REFERENCES Company(cid) ON DELETE CASCADE ON UPDATE CASCADE, 
Title VARCHAR(100) NOT NULL, 
Description VARCHAR(300) NOT NULL, 
Package INT(20) NOT NULL
);

INSERT INTO user VALUES (1, "Yash", "yash@gmail.com", "Engineer", "2348576", "B.Tech.", "yash");
INSERT INTO user VALUES (2, "Shivam", "shivam@gmail.com", "Backend Engineer", "52358", "B.Tech.", "shivam");
INSERT INTO user VALUES (3, "Gautam", "gautam@gmail.com", "Software Developer", "1235789", "B.Tech.", "gautam");
INSERT INTO user VALUES (4, "Amaan", "amaan@gmail.com", "GUI Engineer", "1547693", "B.Tech.", "amaan");
INSERT INTO user VALUES (5, "Roshan", "roshan@gmail.com", "Backend Engineer", "2547693", "B.Tech.", "roshan");
