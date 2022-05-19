CREATE TABLE tb_seller (
    id int8 not null,
    name varchar(255),
    PRIMARY key (id)
);

CREATE TABLE tb_sale (
    id int8,
    date date,
    price float8,
    quantity int4,
    seller_id int8,
    PRIMARY KEY (id),
    FOREIGN KEY (seller_id) REFERENCES tb_seller
);

INSERT INTO tb_seller (id, name) VALUES (1, 'Maria da Silva');
INSERT INTO tb_seller (id, name) VALUES (2, 'Ivan Reis');
INSERT INTO tb_seller (id, name) VALUES (3, 'Marcos Dias');
INSERT INTO tb_seller (id, name) VALUES (4, 'Joaquim Silva Borges');

INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (1, '2022-05-01', 300.00, 3, 1);
INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (2, '2022-05-07', 800.50, 2, 2);
INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (3, '2022-05-07', 1000.00, 2, 4);
INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (4, '2022-05-18', 700.84, 1, 4);
INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (5, '2022-05-27', 400.97, 2, 3);
INSERT INTO tb_sale (id, date, price, quantity, seller_id) VALUES (6, '2022-05-27', 200.00, 5, 2);
