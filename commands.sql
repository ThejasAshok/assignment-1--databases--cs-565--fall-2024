-- Get the name of the store and its URL where any spices were purchased.
SELECT DISTINCT sa.store_name, sa.url_address
FROM spices_purchased sp
JOIN store_add sa ON sp.store_id = sa.store_id;


-- Get the name of the store and its URL where spices were purchased, including their barcode.
SELECT sp.barcode, sa.store_name, sa.url_address
FROM spices_purchased sp
JOIN store_add sa ON sp.store_id = sa.store_id;


-- Get stores who only have an online address.
SELECT s.store_id, s.store_name, sa.url_address
FROM stores s
JOIN store_add sa ON s.store_id = sa.store_id
WHERE sa.physical_address IS NULL;


-- Get stores who have an online and a physical address.
SELECT s.store_id, s.store_name, sa.url_address, sa.physical_address
FROM stores s
JOIN store_add sa ON s.store_id = sa.store_id
WHERE sa.physical_address IS NOT NULL AND sa.url_address IS NOT NULL;


-- Get spices whose names are also brands. For example, Fresh Direct is a store that also makes spices.
SELECT sp.spice_name, sp.barcode, s.store_name
FROM spices_purchased sp
JOIN stores s ON sp.spice_name = s.store_name;


-- Get spices whose names contain “cinnamon”.
SELECT *
FROM spices_purchased
WHERE spice_name LIKE '%cinnamon%';


-- Get the brand name of the Sumac spice and the name and URL of the store where it was purchased.
SELECT s.brand, sp.store_name, sa.url_address
FROM spices AS s
JOIN spices_purchased AS sp ON s.spice_name = sp.spice_name
JOIN store_add AS sa ON sp.store_id = sa.store_id
WHERE s.spice_name = 'Sumac';