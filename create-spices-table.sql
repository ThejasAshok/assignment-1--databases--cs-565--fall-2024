CREATE TABLE IF NOT EXISTS spices (
    spice_name        VARCHAR(64)   NOT NULL,     
    net_weight_in_oz  DECIMAL(5,3)  NOT NULL,     
    brand             VARCHAR(48)   NOT NULL,     
    expiration_date   DATE          DEFAULT NULL, 
    barcode           VARCHAR(14),                
    comment           TINYTEXT      DEFAULT NULL, 

    PRIMARY KEY (barcode)
);
