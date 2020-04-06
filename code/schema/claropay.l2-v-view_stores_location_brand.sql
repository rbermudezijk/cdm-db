--
-- Store view to genereta a join from CAT_STORE_LOCATION and CAT_STORE table.
--
-- Author: Ricardo Bermúdez Bermúde
-- Since:  Nov 20th, 2019.
--
CREATE ALGORITHM=MERGE VIEW VIEW_STORES_LOCATION_BRAND AS
  SELECT 
    sl.ID,
    sl.BRAND_ID,
    sl.ADDRESS,
    sl.LATITUDE,
    sl.LONGITUDE,
    sl.PAST_ID,
    sl.LAT_KM_CUAD,
    sl.LNG_KM_CUAD,
    s.STORE AS BRAND_TOKEN,
  FROM CAT_STORE_LOCATION sl
  INNER JOIN CAT_STORE s ON sl.BRAND_ID=s.STORE_ID;