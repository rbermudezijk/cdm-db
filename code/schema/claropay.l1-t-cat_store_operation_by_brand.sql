--
-- This table contents the operations available by brand. 
-- 
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- Compose:  CAT_STORE_OPERATION, CAT_STORE
--
CREATE TABLE `CAT_STORE_OPERATION_BY_BRAND` (
  `BRAND_ID`     INT NOT NULL,
  `OPERATION_ID` INT NOT NULL,
  PRIMARY KEY(`BRAND_ID`, `OPERATION_ID`),
  CONSTRAINT `CAT_STORE_OPERATION_BY_BRAND_OPERATION_FK`
    FOREIGN KEY (`OPERATION_ID`)
    REFERENCES  `CAT_STORE_OPERATION` (`ID`)
    ON UPDATE   CASCADE,
  CONSTRAINT `CAT_STORE_OPERATION_BY_BRAND_BRAND_FK`
    FOREIGN KEY (`BRAND_ID`)
    REFERENCES  `CAT_STORE` (`STORE_ID`)
    ON UPDATE   CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 
-- Base data, it requires CAT_STORE and CAT_STORE_OPERATION table are loaded.
--
-- Uncomment if you need generate data from scratch.
-- 
# INSERT INTO `CAT_STORE_OPERATION_BY_BRAND` (`BRAND_ID`, `OPERATION_ID`)
#   SELECT brand.STORE_ID, operation.ID 
#   FROM CAT_STORE brand
#   JOIN CAT_STORE_OPERATION operation
#   WHERE
#        (brand.STORE = 'Sanborns'	         AND operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Sears'	             AND operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Telcel'	           AND operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'OXXO'	             AND operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Inbursa'	           AND operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'DiamonFire'	       AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Aqua Terra'	       AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'The 54 th'	         AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Vapiano'	           AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Blu Lagoon'	       AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Asadero Beef'	     AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'This and This'	     AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Menta Florería'	   AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Sushi Itto'	       AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Jimmy Joe Chicken'	 AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Enrique Tomás'	     AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Sanborns'	         AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Costa a costa'	     AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Sears'	             AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Acuario Inbursa'	   AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Acuario Iteractivo' AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Bros'	             AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Miniso'	           AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'iShop'	             AND operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Telcel'	           AND operation.OPERATION_KEY = 'RETIRAR')
#     OR (brand.STORE = 'OXXO'	             AND operation.OPERATION_KEY = 'RETIRAR')
#     OR (brand.STORE = 'Inbursa'	           AND operation.OPERATION_KEY = 'RETIRAR');