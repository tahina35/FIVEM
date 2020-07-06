USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_airlines', 'Airliners', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_airlines', 'Airliners', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_airlines', 'Airliners', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('airlines', 'Airliners')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('airlines',0,'recrue','Recrue',0,'{}','{}'),
	('airlines',1,'novice','Novice',0,'{}','{}'),
	('airlines',2,'experimente','Experimente',0,'{}','{}'),
	('airlines',3,'uber','Chef',0,'{}','{}'),
	('airlines',4,'boss','Patron',0,'{}','{}')
;
