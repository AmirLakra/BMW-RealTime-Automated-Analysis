
CREATE TABLE bmw (
    sales_id_no INTEGER PRIMARY KEY,
    sale_id VARCHAR(50),
    sale_date DATE,
    customer_id VARCHAR(50),
    customer_age INTEGER,
    customer_gender VARCHAR(20),
    region VARCHAR(100),
    country VARCHAR(100),
    dealer VARCHAR(150),
    salesperson VARCHAR(150),
    model VARCHAR(100),
    trim VARCHAR(100),
    body_type VARCHAR(100),
    manufacturing_year INTEGER,
    color VARCHAR(50),
    fuel_type VARCHAR(50),
    transmission VARCHAR(50),
    engine_size_l DECIMAL(5,2),
    mileage_km INTEGER,
    list_price_usd DECIMAL(12,2),
    discount_usd DECIMAL(12,2),
    final_price_usd DECIMAL(12,2),
    payment_method VARCHAR(50),
    customer_rating DECIMAL(3,2),
    sales_classification VARCHAR(100)
);

SELECT * FROM bmw;