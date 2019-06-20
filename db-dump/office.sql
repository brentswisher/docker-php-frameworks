DROP TABLE IF EXISTS `office_user`
;

DROP TABLE IF EXISTS `office_status`
;

CREATE TABLE office_status  ( 
	statusId	INT(11) NOT NULL AUTO_INCREMENT,
	publicId	varchar(45) UNIQUE,
	title		varchar(25) NOT NULL UNIQUE,
	PRIMARY KEY(statusId)
)
;

CREATE TRIGGER office_status_public_key
  BEFORE INSERT ON office_status
  FOR EACH ROW
  SET new.publicId = uuid()
;

CREATE TABLE office_user  ( 
	userId		INT(11) NOT NULL AUTO_INCREMENT,
	publicid	varchar(45),
	username	varchar(255) NOT NULL UNIQUE,
	firstName	varchar(255) NULL,
	lastName	varchar(255) NULL,
	isAvailable	INT(1) NULL DEFAULT '0',
	note		varchar(255) NULL,
	statusId	INT(11) NULL,
	PRIMARY KEY(userId)
)
;

ALTER TABLE `office_user`
	ADD CONSTRAINT `fk`
	FOREIGN KEY(`statusId`)
	REFERENCES `office_status`(`statusId`)
;

CREATE TRIGGER office_user_public_key
  BEFORE INSERT ON office_user
  FOR EACH ROW
  SET new.publicId = uuid()
;

INSERT INTO office_status(statusId, title) 
	VALUES(1, 'Sick')
;
INSERT INTO office_status(statusId, title) 
	VALUES(2, 'Work From Home')
;
INSERT INTO office_status(statusId, title) 
	VALUES(3, 'Meeting')
;
INSERT INTO office_status(statusId, title) 
	VALUES(4, 'In the Basement')
;
INSERT INTO office_status(statusId, title) 
	VALUES(5, 'Other')
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('bill', 'Bill', 'Lumbergh', 0, 'TPS Reports', 3)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('pete', 'Peter', 'Gibbons', 0, "I'm just not coming in anymore", NULL)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('bob1', 'Bob', 'Slydell', 1, '', NULL)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('bob2', 'Bob', 'Porter', 1, '', NULL)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('milton', 'Milton', 'Waddams', 1, '', 4)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('samir', 'Samir', 'Nagheenanajar', 1, '', NULL)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('michael', 'Michael', 'Bolton', 1, "At Chotchkie's", 5)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('tom', 'Tom', 'Smykowski', 0, '', NULL)
;

INSERT INTO office_user(username, firstName, lastName, isAvailable, note, statusId) 
	VALUES('dom', 'Dom', 'Portwood', 0, '', NULL)
;
