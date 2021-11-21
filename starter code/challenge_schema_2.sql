CREATE TABLE review_id_table (
  review_id TEXT NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE, -- this should be in the formate yyyy-mm-dd
  PRIMARY KEY (review_id),
  UNIQUE (review_id)
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT NOT NULL UNIQUE,
  product_title TEXT,
  FOREIGN KEY (product_id) REFERENCES review_id_table (product_id),
  PRIMARY KEY (product_id)
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT NOT NULL UNIQUE,
  customer_count INT,
  FOREIGN KEY (customer_id) REFERENCES review_id_table (customer_id),
  PRIMARY KEY (customer_id)
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT,
  FOREIGN KEY (review_id) REFERENCES review_id_table (review_id),
  PRIMARY KEY (review_id)
);