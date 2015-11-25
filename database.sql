DROP TABLE IF EXISTS `Archive`;

CREATE TABLE `Archive` (
  `arch_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` INTEGER DEFAULT 0, 
  `Codeacademy Username` VARCHAR(30), 
  `Hours` VARCHAR(255), 
  `Codeacamdemy Badge` LONGBLOB, 
  INDEX (`Codeacademy Username`), 
  PRIMARY KEY (`arch_id`), 
  INDEX (`user_id`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

DROP TABLE IF EXISTS `CAInfo`;

CREATE TABLE `CAInfo` (
  `CA_ID` INTEGER NOT NULL AUTO_INCREMENT, 
  `user_id` INTEGER DEFAULT 0, 
  `Codeacademy Username` VARCHAR(50), 
  `Hours` INTEGER DEFAULT 0, 
  `Codeacademy Badges` LONGBLOB, 
  INDEX (`Codeacademy Username`), 
  PRIMARY KEY (`CA_ID`), 
  INDEX (`user_id`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` INTEGER NOT NULL AUTO_INCREMENT, 
  `First Name` VARCHAR(25), 
  `Last Name` VARCHAR(25), 
  `Student Number` VARCHAR(8), 
  `Email` VARCHAR(30), 
  `Password` VARCHAR(20), 
  `Admin` INTEGER DEFAULT 0, 
  PRIMARY KEY (`user_id`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;
