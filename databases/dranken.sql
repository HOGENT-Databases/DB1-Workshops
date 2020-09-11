CREATE DATABASE IF NOT EXISTS `Dranken`;
USE `Dranken`;

DROP TABLE IF EXISTS `Unie`;
CREATE TABLE `Unie` (
  `toelatingsnr` INTEGER NOT NULL, 
  `naam` VARCHAR(25), 
  `oprichtingsJaar` YEAR, 
  `voorzitter` VARCHAR(25), 
  PRIMARY KEY (`toelatingsnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;
INSERT INTO `Unie` (`toelatingsnr`, `naam`, `oprichtingsJaar`, `voorzitter`) VALUES (13, 'Wientje Goet', '2005', 'K. De Bois');
INSERT INTO `Unie` (`toelatingsnr`, `naam`, `oprichtingsJaar`, `voorzitter`) VALUES (14, 'Vlaamse Wijngilde', '1998', 'P. Van Eeckhoutte');
INSERT INTO `Unie` (`toelatingsnr`, `naam`, `oprichtingsJaar`, `voorzitter`) VALUES (23, 'Gentse Wijnunie', '1963', 'J. Peykens');
INSERT INTO `Unie` (`toelatingsnr`, `naam`, `oprichtingsJaar`, `voorzitter`) VALUES (32, 'Antwaarp Wijn', '2016', 'B. De Vilder');

DROP TABLE IF EXISTS `Klant`;
CREATE TABLE `Klant` (
  `klantnr` INTEGER NOT NULL , 
  `naam` VARCHAR(45), 
  `adres` VARCHAR(25), 
  `postcode` VARCHAR(7), 
  `plaats` VARCHAR(25), 
  `provincie` VARCHAR(6),
  `unie` INTEGER,
  FOREIGN KEY fk_unie(`unie`) REFERENCES `Unie`(`toelatingsnr`),  
  PRIMARY KEY (`klantnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1001, 'Wijnhandel Van den Bussche & Zonen', 'Vlaanderenstraat 110', '9000', 'Gent', 'OVL','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1002, 'Evin Wine Store', 'Sint-Margrietstraat 16', '9000', 'Gent', 'OVL','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1003, 'Caves Saint Amand', 'Gentbruggestraat 169', '9040', 'Sint-Amandsberg', 'OVL','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1004, 'Wijnhuis Tinto', 'Blauwesteenstraat 75', '9070', 'Heusden', 'OVL','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1005, 'Wijnen Vinum Est Sanu', 'Blauwe Paal 43', '9230', 'Wetteren', 'OVL','14');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1006, 'Leirovins', 'Oude Heerbaan 9', '9230', 'Wetteren', 'OVL','14');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1007, 'Wijnhandel Gulden Schaduw BVBA', 'Doorslaarstraat 8', '9160', 'Lokeren', 'OVL','14');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1008, 'Wijnen Lybaert', 'Olifantstraat 7/A', '9000', 'Gent', 'OVL','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1020, 'Wijnen Le Compte', 'Leo de Bethunelaan 10', '9300', 'Aalst', 'OVL', null);
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1021, 'Cavatappi italiaanse wijnen', 'Poel 12', '9000', 'Gent', 'OVL','14');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1022, 'Wijnhandel Copa Cava', 'Kantstraat 12', '8020', 'Oostkamp', 'WVL', '13');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1030, 'Wijnhandel Spoel', 'Dorpstraat 12', '8800', 'Roeselare', 'WVL','13');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1031, 'Wijnhandel De Fles', 'Spechtstraat 56', '9990', 'Maldegem', 'WVL','13');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1044, 'Wijnhandel Slokop', 'Thuishof 12', '8300', 'Knokke', 'WVL', null);
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1045, 'Belgian Wines', 'Leasestraat 1', '2000', 'Antwerpen', 'A','23');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1050, 'Wijnhandel Bottle Neck', 'Scheldekaai 23', '2000', 'Antwerpen', 'A','13');
INSERT INTO `Klant` (`klantnr`, `naam`, `adres`, `postcode`, `plaats`, `provincie`,`unie`) VALUES (1090, 'Wijnhandel Puerta del Sol', 'Bootlaan 1', '2100', 'Deurne', 'A', null);

DROP TABLE IF EXISTS `Artikel`;
CREATE TABLE `Artikel` (
  `artikelnr` INTEGER NOT NULL, 
  `soortnr` INTEGER,
  `jaar` INTEGER, 
  `inhoud` FLOAT NULL, 
  `adviesverkoopprijs` DECIMAL(19,4), 
  `voorraad` INTEGER, 
  PRIMARY KEY (`artikelnr`),
  FOREIGN KEY fk_soort(`soortnr`) REFERENCES `Soort`(`soortnr`)
  ) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10800, 1201, 2002, .75, 32, 50);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10801, 2140, 2013, .75, 75.9, 65);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10802, 1224, 2014, .75, 29.5, 43);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10803, 4006, NULL, .75, 102.7, 9);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10804, 2139, 2014, 1, 120, 5);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10805, 2137, 2013, .75, 24.9, 36);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10806, 1223, 2010, .75, 134, 17);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10807, 4002, 2012, .7, 75, 9);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10808, 3020, NULL, .7, 123, 20);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10809, 1200, 2007, 50, NULL, 2);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10810, 3011, NULL, .7, 62.5, 5);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10811, 1221, 2013, .75, 48.5, 11);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10812, 2137, 2015, 100, NULL, 1);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10813, 1205, 2014, .75, 15.5, 78);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10814, 1224, 2014, 50, NULL, 1);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10815, 2135, 2013, .75, 17.75, 16);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10816, 4007, NULL, .75, 64.25, 10);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10817, 4009, NULL, .75, 78.75, 4);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10818, 2134, 2015, 500, NULL, 1);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10819, 1216, 2005, .75, 72, 26);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10820, 2123, 2006, 2, 345, 34);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10821, 1228, 2012, .75, 54.5, 32);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10822, 2138, NULL, .7, 54.9, 2);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10823, 1225, 2014, .75, 27.75, 9);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10824, 2139, 2011, 1, 172, 45);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10825, 2139, 2014, 1, 210, 78);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10826, 1202, 2008, .75, 42, 15);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10827, 1202, 2011, .75, 31, 6);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10828, 4004, 2009, 50, NULL, 1);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10829, 1217, 2010, .75, 14.7, 4);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10830, 1226, 2014, .75, 19.9, 9);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10831, 1203, 2011, .75, 21.6, 12);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10832, 1206, 2007, .75, 51.8, 17);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10833, 1210, 2009, .75, 21.8, 13);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10834, 1212, 2008, .75, 34.1, 70);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10835, 3010, NULL, .7, 66.9, 41);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10836, 4005, 2006, .75, 40.5, 12);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10837, 1217, 2003, .75, 31.25, 16);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10838, 1200, 2007, .75, 27, 9);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10839, 1203, 2008, .75, 58.3, 13);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10840, 4009, NULL, 1.5, 141, 5);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10841, 2123, 2011, 3, 410, 5);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10842, 2123, 2011, 2, 280, 10);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10843, 1224, 2007, .75, 38.9, 2);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10844, 1381, 2008, .75, 5.9, 8);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10845, 1382, 2014, .75, 90.5, 2);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10846, 1385, 2013, .75, 25.8, 4);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10847, 1383, 2014, .75, 13.9, 10);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10848, 1384, 2015, .75, 12.7, 1);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10849, 1383, 2012, .75, 15.9, 15);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10850, 1101, NULL, .75, 15.9, 10);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10851, 1101, NULL, .75, 22.5, 15);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10852, 1002, NULL, 1, 28.6, 7);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10853, 1003, NULL, .75, 38.5, 5);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10854, 1003, NULL, 1.00, 46.5, 0);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10855, 3101, NULL, .75, 5.49, 177);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10856, 3102, NULL, .75, 6.99, 75);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10857, 3102, NULL, 1.50, 12, 20);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10858, 3102, NULL, 3, 25, 20);
INSERT INTO `Artikel` (`artikelnr`, `soortnr`, `jaar`, `inhoud`, `adviesverkoopprijs`, `voorraad`) VALUES (10859, 2136, 2016, .75, 7.99, 20);

DROP TABLE IF EXISTS `Factuur`;
CREATE TABLE `Factuur` (
  `factuurnr` INTEGER NOT NULL, 
  `klantnr` INTEGER,
  `factuurdatum` DATETIME, 
  PRIMARY KEY (`factuurnr`),
  FOREIGN KEY fk_klant(`klantnr`) REFERENCES `klant`(`klantnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;
SET autocommit=1;

INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173100, 1045, '2017-05-21 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173101, 1007, '2017-06-21 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173102, 1003, '2017-06-22 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173103, 1004, '2017-06-24 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173104, 1020, '2017-06-27 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173105, 1050, '2017-06-28 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173106, 1090, '2017-06-29 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173107, 1008, '2017-06-29 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173108, 1045, '2017-06-29 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173109, 1006, '2017-06-30 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173110, 1021, '2017-06-30 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173111, 1031, '2017-07-01 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173112, 1090, '2017-07-04 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173113, 1090, '2017-07-06 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173114, 1005, '2017-07-06 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173115, 1001, '2017-07-07 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173116, 1003, '2017-08-01 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173117, 1050, '2017-08-10 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173118, 1007, '2017-09-07 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173119, 1090, '2017-09-25 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173120, 1001, '2017-09-26 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173121, 1003, '2017-10-01 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173122, 1022, '2017-10-10 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173123, 1004, '2017-10-17 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173124, 1008, '2017-10-25 00:00:00');
INSERT INTO `Factuur` (`factuurnr`, `klantnr`, `factuurdatum`) VALUES (173125, 1030, '2017-10-26 00:00:00');

DROP TABLE IF EXISTS `Factuurregel`;
CREATE TABLE `Factuurregel` (
  `factuurnr` INTEGER NOT NULL, 
  `artikelnr` INTEGER NOT NULL,
  `aantal` INTEGER, 
  `verkoopprijs` DECIMAL(19,4), 
  PRIMARY KEY (`factuurnr`, `artikelnr`),
  FOREIGN KEY fk_factuur(`factuurnr`) REFERENCES `Factuur`(`factuurnr`),
  FOREIGN KEY fk_artikel(`artikelnr`) REFERENCES `Factuur`(`artikelnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173100, 10859, 10, 7.99);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173100, 10844, 2, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10821, 2, 54.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10831, 6, 21.6);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10832, 2, 51.8);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10839, 2, 58.3);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10844, 4, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173101, 10845, 1, 90.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173102, 10820, 1, 345);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173103, 10816, 1, 64.25);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173103, 10817, 1, 78.75);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173103, 10838, 1, 26);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173103, 10859, 2, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173104, 10805, 10, 24.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173104, 10822, 1, 54.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173104, 10848, 1, 12.7);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173104, 10849, 3, 15.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173105, 10819, 5, 72);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173105, 10822, 1, 54.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173105, 10830, 3, 19.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173105, 10837, 5, 31.25);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173105, 10846, 1, 25.8);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173106, 10816, 3, 63);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173106, 10821, 2, 54.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173106, 10841, 3, 410);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173106, 10843, 1, 38.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173107, 10835, 2, 66.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173107, 10842, 1, 280);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173107, 10844, 2, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173107, 10845, 1, 90.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173108, 10807, 2, 75);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173108, 10816, 2, 63);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173108, 10817, 2, 78.75);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173109, 10802, 5, 29);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173109, 10805, 3, 24.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173109, 10844, 1, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173109, 10849, 3, 15.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10813, 1, 15.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10819, 1, 72);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10826, 1, 42);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10827, 1, 31);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10837, 1, 31.25);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173110, 10838, 1, 27);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173111, 10817, 1, 78.75);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173111, 10824, 3, 172);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173111, 10833, 2, 21.8);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173111, 10835, 1, 66.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173111, 10844, 1, 5.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173112, 10845, 1, 90.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173112, 10846, 1, 25.8);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173112, 10847, 2, 13.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173113, 10816, 2, 64.25);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173114, 10802, 5, 29.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173114, 10821, 1, 54.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173114, 10838, 1, 27);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173114, 10843, 1, 38.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173115, 10820, 1, 345);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173115, 10841, 1, 410);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173115, 10842, 1, 280);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173116, 10850, 2, 25.8);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173117, 10851, 2, 40);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173117, 10854, 2, 64.25);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173120, 10853, 5, 175.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173120, 10821, 1, 54.5);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173120, 10838, 1, 27);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173121, 10843, 1, 38.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173122, 10850, 10, 345);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173123, 10852, 1, 28.6);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173123, 10842, 1, 280);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173123, 10843, 1, 38.9);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173124, 10855, 20, 100);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173124, 10856, 20, 140);
INSERT INTO `Factuurregel` (`factuurnr`, `artikelnr`, `aantal`, `verkoopprijs`) VALUES (173124, 10857, 5, 60);

DROP TABLE IF EXISTS `Productgroep`;
CREATE TABLE `Productgroep` (
  `productgroepnr` TINYINT(3) UNSIGNED NOT NULL, 
  `productnaam` VARCHAR(20), 
  PRIMARY KEY (`productgroepnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (20, 'Whisky');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (22, 'Gin');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (30, 'Grappa');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (31, 'Cava');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (32, 'Champagne');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (33, 'Cognac');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (34, 'Likeur');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (35, 'Porto');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (36, 'Sherry');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (50, 'Wijn');
INSERT INTO `Productgroep` (`productgroepnr`, `productnaam`) VALUES (51, 'Rose');

DROP TABLE IF EXISTS `Soort`;
CREATE TABLE `Soort` (
  `soortnr` INTEGER NOT NULL, 
  `productgroepnr` TINYINT(3) UNSIGNED, 
  `naam` VARCHAR(40), 
  `kleur` VARCHAR(10), 
  `alcoholperc` FLOAT NULL, 
  PRIMARY KEY (`soortnr`),
  FOREIGN KEY fk_productgroep(`productgroepnr`) REFERENCES `Productgroep`(`productgroepnr`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1002, 22, 'TUI Gin', 'Blauw', 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1003, 22, 'Cobbys', 'Groen', 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1004, 22, 'Belfius Gin', 'Kleurloos', 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1101, 30, 'Julia', 'Barique', 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1102, 30, 'Alexander', 'Kleurloos', 43);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1103, 30, 'Cellini', 'Kleurloos', 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1200, 50, 'Baronnie de Coussergues Thongue', 'Rood', 6);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1201, 50, 'Bourgogne A.C. Domaine Ghislaine Barthod', 'Rood', 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1202, 50, 'Brouilly Pisse-Veile', 'Wit', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1203, 50, 'Léoville Barton', 'Rood', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1204, 50, 'Chateau Verdier Blanc', 'Wit', 10);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1205, 50, 'Riesling des Cigognes', 'Wit', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1206, 50, 'Lirac', 'Wit', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1210, 50, 'Chateau Terasses', 'Rood', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1211, 50, 'Chateau Cuvee Montie', 'Rood', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1212, 50, 'Chateau Pesquie', 'Rood', 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1213, 50, 'Pinot-Noir Cotes de Toul', 'Rood', 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1215, 50, 'Palo Alto Savignon', 'Rood', 11);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1216, 50, 'Palo Alto Cabernet-Sauvignon', 'Rood', 10);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1217, 50, 'Chateau Clement Termes', 'Rood', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1218, 50, 'Vicomte d\'Aumelas', 'Rood', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1219, 50, 'Bourgogne Pinot Noir Confuron', 'Rood', 14);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1220, 50, 'Nekeas Tinto', 'Rood', 10);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1221, 51, 'Nekea Tinto Crianza', 'Roze', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1222, 50, 'Protocolo Tinto Vino', 'Wit', 7);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1223, 50, 'Rioja Crianza Sierra', 'Rood', 7);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1224, 36, 'Soave', NULL, 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1225, 36, 'Sa Nova Alicanta', NULL, 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1226, 51, 'Douro Quinta', 'Roze', 7);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1227, 50, 'Cabernet-Sauvignon', 'Rood', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1228, 50, 'Chardonnay', 'Wit', 6);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1345, 32, 'Estate Semillion', 'Roze', 6);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1380, 50, 'Grozes Hermitage', 'Rood', 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1381, 50, 'Riesling Auslese', 'Wit', 11);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1382, 50, 'Steen Stellenbosch', 'Wit', 13);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1383, 50, 'Central Valley', 'Rood', 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1384, 50, 'Mendocino', 'Rood', 13);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (1385, 50, 'Chardonnay Bakensverzet', 'Wit', 13);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2123, 32, 'Estate Semillion Prestige', 'Wit', 6);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2134, 50, 'Shiraz Merlot', 'Rood', 7);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2135, 50, 'Bordolino Classio', 'Rood', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2136, 50, 'Saint Véran', 'Wit', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2137, 50, 'Vino da Tavalo Bianco', 'Wit', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2138, 34, '43', NULL, 43);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2139, 32, 'Dell Emilia', 'Wit', 8);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (2140, 50, 'Saova Villabella', 'Rood', 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3010, 34, 'Tia Maria', NULL, 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3011, 34, 'Cafe Marakesh', NULL, 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3020, 34, 'Amaretto Orginale', NULL, 9);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3030, 34, 'Baileys', NULL, 14);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3101, 31, 'Freixenet', NULL, 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3102, 31, 'Cordoniu', NULL, 12);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (3103, 31, 'Gran Baron', NULL, 10);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4001, 20, 'Atholl Brose', NULL, 45);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4002, 20, 'Aultmore RM', NULL, 50);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4003, 20, 'Aultmore Inverarity', NULL, 45);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4004, 20, 'Avoca', NULL, 35);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4005, 20, 'Avonside', NULL, 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4006, 20, 'Ballantines', NULL, 35);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4007, 20, 'Black & White', NULL, 40);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4008, 20, 'Bowmore Legend', NULL, 45);
INSERT INTO `Soort` (`soortnr`, `productgroepnr`, `naam`, `kleur`, `alcoholperc`) VALUES (4009, 20, 'Four Roses', NULL, 40);
# 62 records  

 