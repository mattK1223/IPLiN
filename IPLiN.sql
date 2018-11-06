CREATE TABLE Owner (
  name VARCHAR(50) PRIMARY KEY,
  addr VARCHAR(200)
);
  
CREATE TABLE ip (
  url VARCHAR(200) PRIMARY KEY,
  OwnerName VARCHAR(50) NOT NULL,
  title VARCHAR(200),
  FOREIGN KEY (OwnerName) REFERENCES Owner
    ON DELETE CASCADE
);
  
CREATE TABLE patent (
  url VARCHAR(200) PRIMARY KEY, 
  appNum INT, 
  patentNum INT,
  filingDate DATE,
  issueDate DATE,
  abstract VARCHAR(1000),
  FOREIGN KEY(url) REFERENCES ip
    ON DELETE CASCADE
);

CREATE TABLE trademark (
  url VARCHAR(200) PRIMARY KEY,
  serialNum INT,
  registNum INT,
  status CHAR(4),
  filingDate DATE,
  FOREIGN KEY(url) REFERENCES ip
    ON DELETE CASCADE
);

CREATE TABLE copyright (
  url VARCHAR(200) PRIMARY KEY,
  registrationNum INT,
  publicationDate DATE,
  registrationDate DATE,
  type VARCHAR(100),
  FOREIGN KEY(url) REFERENCES ip
    ON DELETE CASCADE
);

CREATE TABLE YouTubeVideo (
  url VARCHAR(200) PRIMARY KEY,
  ChannelURL VARCHAR(200) NOT NULL,
  publicationDate DATE,
  FOREIGN KEY(url) REFERENCES ip
    ON DELETE CASCADE
);

CREATE TABLE License (
  ownerName VARCHAR(50) NOT NULL,
  licensee VARCHAR(100) NOT NULL,
  url VARCHAR(100) NOT NULL,
  startDate DATE,
  endDate DATE,
  payment REAL,
  PRIMARY KEY(ownerName, url, licensee),
  FOREIGN KEY(ownerName) REFERENCES Owner
    ON DELETE CASCADE,
  FOREIGN KEY(url) REFERENCES ip
    ON DELETE CASCADE
);