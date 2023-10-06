-- Table creation schema

-- subcategory_tbl table creation
DROP TABLE subcategory_tbl;

CREATE TABLE subcategory_tbl (
	subcategory_id VARCHAR(30) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

-- category_tbl table creation
DROP TABLE category_tbl;

CREATE TABLE category_tbl (
	category_id VARCHAR(30) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id)
);

-- contacts_tbl table creation
DROP TABLE contacts_tbl;

CREATE TABLE contacts_tbl (
	contact_id INT NOT NULL,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL,
	PRIMARY KEY (contact_id)
);

-- category_tbl table creation
DROP TABLE campaign_tbl;

CREATE TABLE campaign_tbl (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
	description VARCHAR(70) NOT NULL,
    goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
    outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
    country VARCHAR(30) NOT NULL,
    currency VARCHAR(30) NOT NULL,
	launched_date VARCHAR(30) NOT NULL,
    end_date VARCHAR(30) NOT NULL,
	staff_pick VARCHAR(30) NOT NULL,
    spotlight VARCHAR(30) NOT NULL,
	category_id VARCHAR(30) NOT NULL,
    subcategory_id VARCHAR(30) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts_tbl(contact_id),   
    FOREIGN KEY (category_id) REFERENCES category_tbl(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory_tbl(subcategory_id),
	PRIMARY KEY (cf_id)
);