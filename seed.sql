INSERT INTO users (name, email, password_hash) VALUES
('Budi Santoso', 'budi@123.com', 'hash1'),
('Joko Kendil',  'joko@haha.com', 'hash2'),
('Bowo Gokil',  'bowo@presiden.com', 'hash3'),
('Bahlil Fufufafa', 'bah@lil.com', 'hash4');

INSERT INTO categories (name, description) VALUES
('Electronics', 'Gadget dan Perangkat Elektronik'),
('Fashion',     'Berbagai Pakaian'),
('Books',       'Buku dan Majalah Trending'),
('Home App',    'Perlengkapan Rumah Tangga');


INSERT INTO products (category_id, name, description, price, stock) VALUES
(1, 'Wireless Mouse',   'Mouse Tanpa Kabel Praktis',        150000, 50),
(1, 'Mechanical Keyboard','Keyboard Trendy Dengan Warna Menarik',          750000, 20),
(2, 'T-Shirt Polos',    'Kaos Polos Khas Anak Muda',           120000, 100),
(2, 'Jaket Denim',      'Jaket Kalcer Ala Anak Muda',                 350000, 40),
(3, 'Clean Code',       'Buku Coding Joko Widodo',       280000, 30),
(3, 'Politik ala Gen Z', 'Paham Politik ala Generasi Z',   320000, 25),
(4, 'Desk Lamp',        'LED Dengan Energi Hemat',       180000, 60),
(4, 'Haworth Office Chair',        'Kursi Kerja Ergonomis',       180000, 60);


INSERT INTO orders (user_id, status) VALUES
(1, 'completed'),
(1, 'paid'),
(2, 'shipped'),
(2, 'pending'),
(3, 'pending'),
(3, 'completed'),
(4, 'shipped'),
(4, 'cancelled');


INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 150000),
(1, 6, 2, 280000),
(2, 3, 1, 1200000),
(3, 4, 3, 120000),
(3, 5, 1, 350000),
(4, 2, 1, 750000),
(4, 8, 2, 180000),
(5, 7, 1, 320000);