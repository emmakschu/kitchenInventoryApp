/* This file will create the table with desired params to run
   the Rails app */

CREATE TABLE foodProducts (
	id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	orderNo VARCHAR(64),
	unitPrice DOUBLE,
	unitType INTEGER,
	unitSize DOUBLE,
	pricePerUnit DOUBLE,
	locations VARCHAR(256)
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);