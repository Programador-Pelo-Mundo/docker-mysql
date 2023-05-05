INSERT INTO customers
    (id, name, birth_date)
VALUES
    (1, 'First Customer', '2000-04-01'),
    (2, 'Second Customer', '2001-04-01'),
    (3, 'Third Customer', '2002-04-01');


INSERT INTO orders
    (id, custumer_id, product_sku, product_description, date, price)
VALUES
    (1, 1, 'product-001', 'Chocolate Y', '2023-02-20', 2.99),
    (2, 1, 'product-002', 'Perfume X', '2023-03-05', 99.99),
    (3, 3, 'product-002', 'Perfume X', '2023-04-01', 100.30),
    (4, 3, 'product-999', 'Soda A', '2023-05-01', 3.00),
    (5, 2, 'product-999', 'Soda A', '2023-05-04', 3.22);
