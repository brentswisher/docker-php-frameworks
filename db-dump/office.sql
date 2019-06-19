DROP TABLE IF EXISTS `office_user`
;

DROP TABLE IF EXISTS `office_status`
;

CREATE TABLE office_status  ( 
	statusId	decimal(10,0) NOT NULL,
	title   	varchar(25) NULL,
	PRIMARY KEY(statusId)
)
;
ALTER TABLE office_status
	ADD CONSTRAINT `Unique`
	UNIQUE (title)
;

CREATE TABLE office_user  ( 
	username   	varchar(255) NOT NULL,
	firstName  	varchar(255) NULL,
	lastName   	varchar(255) NULL,
	isAvailable	decimal(1,0) NULL DEFAULT '0',
	note       	varchar(255) NULL,
	statusId   	decimal(10,0) NULL,
	userId     	decimal(10,0) NOT NULL,
	PRIMARY KEY(userId)
)
;
ALTER TABLE office_user
	ADD CONSTRAINT `Username`
	UNIQUE (username)
;

ALTER TABLE `office_user`
	ADD CONSTRAINT `fk`
	FOREIGN KEY(`statusId`)
	REFERENCES `office_status`(`statusId`)
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

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(1,'bill', 'Bill', 'Lumbergh', 0, 'TPS Reports', 3)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(2,'pete', 'Peter', 'Gibbons', 0, "I'm just not coming in anymore", NULL)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(3,'bob1', 'Bob', 'Slydell', 1, '', NULL)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(4,'bob2', 'Bob', 'Porter', 1, '', NULL)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(5,'milton', 'Milton', 'Waddams', 1, '', 4)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(6,'samir', 'Samir', 'Nagheenanajar', 1, '', NULL)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(1,'michael', 'Michael', 'Bolton', 1, "At Chotchkie's", 5)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(1,'tom', 'Tom', 'Smykowski', 0, '', NULL)
;

INSERT INTO office_user(userId, username, firstName, lastName, isAvailable, note, statusId) 
	VALUES(1,'dom', 'Dom', 'Portwood', 0, '', NULL)
;
