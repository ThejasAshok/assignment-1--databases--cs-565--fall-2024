CREATE TABLE spices_purchased (
    spice_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each spice
    spice_name VARCHAR(255) NOT NULL,         -- Name of the spice
    barcode VARCHAR(50),                      -- Barcode of the spice
    store_name VARCHAR(100),                  -- Name of the store where the spice was purchased
    store_id INT
);
