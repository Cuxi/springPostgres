/*CREATE DATABASE contactdb;*/
/*para postgres hay que hacerlo sin las comillas*/
CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
/*	`contact_id` serial(11) NOT NULL AUTO_INCREMENT,*/
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8



CREATE TABLE contact (contact_id serial NOT NULL AUTO_INCREMENT, name varchar(45) NOT NULL, email varchar(45) NOT NULL,   address varchar(45) NOT NULL, telephone varchar(45) NOT NULL, PRIMARY KEY (contact_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
