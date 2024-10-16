CREATE TABLE stores (
    store_id INT PRIMARY KEY,                  -- Unique identifier for each store
    store_name VARCHAR(100) NOT NULL,          -- Name of the store
    comment TEXT                               -- Optional comment about the store
);
