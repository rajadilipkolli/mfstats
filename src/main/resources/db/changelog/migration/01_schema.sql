CREATE SEQUENCE idgenerator
START WITH 1000
INCREMENT BY 50
NO MINVALUE
NO MAXVALUE
CACHE 50;

CREATE TABLE IF NOT EXISTS COMPANY (
    id BIGINT PRIMARY KEY,
    name TEXT,
    version INT
);

CREATE TABLE IF NOT EXISTS CONTACT (
    id BIGINT PRIMARY KEY,
    version INT,
    email TEXT,
    first_name TEXT,
    last_name TEXT,
    company_id BIGINT,
    FOREIGN KEY (company_id) REFERENCES COMPANY(id)
);