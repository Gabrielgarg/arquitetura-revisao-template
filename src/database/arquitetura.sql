-- Active: 1682511537450@@127.0.0.1@3306
CREATE TABLE brands(
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE products(
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    description TEXT NOT NULL,
    brand_id TEXT NOT NULL, 
    FOREIGN KEY (brand_id) REFERENCES brands(id)
);

SELECT * FROM brands;

SELECT * FROM products;


INSERT INTO brands (id, name)
VALUES("b001", "samsung"),("b002", "motorola"),("b003", "xiaomi"),("b004", "redmi");

INSERT INTO products(id, name, price, description, brand_id)
VALUES("p001", "A30", 999.99, "celular de entrada","b001"),("p002", "A50", 1250, "celular top", "b001"),("p003", "moto g100", 1500, "celular top", "b002"),("p004", "xiaomi11", 1700, "celular top de linha", "b003"),("p005", "redmi9", 1200,"celular bom", "b004");