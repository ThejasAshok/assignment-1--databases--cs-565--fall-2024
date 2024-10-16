CREATE TABLE store_add (
    store_id INT PRIMARY KEY,                   -- Unique identifier for each store
    store_name VARCHAR(100) NOT NULL,           -- Name of the store
    url_address VARCHAR(255),                   -- URL of the store's website
    physical_address TEXT                       -- Physical address of the store (can be NULL)
);
