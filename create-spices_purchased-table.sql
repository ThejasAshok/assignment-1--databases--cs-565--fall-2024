CREATE TABLE spices_purchased (
    spice_id INT AUTO_INCREMENT PRIMARY KEY,  
    spice_name VARCHAR(255) NOT NULL,         
    barcode VARCHAR(50),                      
    store_name VARCHAR(100),                  
    store_id INT                          
);