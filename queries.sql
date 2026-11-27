-- 3 Produk Termahal Dengan Stok Tersedia (DESCENDING).
SELECT name, price, stock
FROM products
WHERE stock > 0
ORDER BY price DESC
LIMIT 5;
