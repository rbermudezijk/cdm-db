-- 
-- Inherit table from CLAROPAY database with store (brand) labels and ids.
-- 
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- 
CREATE TABLE `CAT_STORE` (
  `STORE_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `STORE`    VARCHAR(100) NOT NULL,
  PRIMARY KEY (`STORE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- 
-- Base registers. Uncomment if you need generate data from scratch.
-- 
-- April 3, 2020. - Taken the next values from latest database dump.
-- 
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(1,  'DiamonFire');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(2,  'Aqua Terra');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(3,  'The 54 th');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(4,  'LAS JUANAS');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(5,  'Vapiano');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(6,  'Blu Lagoon');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(7,  'Asadero Beef');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(8,  'This and This');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(9,  'Menta Florería');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(10, 'Sushi Itto');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(11, 'Jimmy Joe Chicken');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(12, 'Enrique Tomás');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(29, 'Sanborns');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(30, 'Costa a costa');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(45, 'Sears');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(46, 'Telcel');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(47, 'OXXO');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(48, 'Inbursa');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(49, 'Acuario Inbursa');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(50, 'Acuario Interactivo');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(51, 'Bros');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(52, 'Miniso');
# INSERT INTO `CAT_STORE` (`STORE_ID`, `STORE`) VALUES(53, 'iShop');