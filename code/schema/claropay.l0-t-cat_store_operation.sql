-- 
-- This table contents the definitions of operations availables with stores
-- partners of Claro Pay.
-- 
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- 
CREATE TABLE CAT_STORE_OPERATION(
    `ID`            INT NOT NULL AUTO_INCREMENT,
    `OPERATION_KEY` VARCHAR(30),
    PRIMARY KEY(ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Base registers. Uncomment if you need generate data from scratch.
-- 
# INSERT INTO `CAT_STORE_OPERATION` (`ID`, `OPERATION_KEY`) VALUES(1, 'FONDOS');
# INSERT INTO `CAT_STORE_OPERATION` (`ID`, `OPERATION_KEY`) VALUES(2, 'PAGAR');
# INSERT INTO `CAT_STORE_OPERATION` (`ID`, `OPERATION_KEY`) VALUES(3, 'RETIRAR');