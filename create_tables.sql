-- aktif olarak kullanılacak veritabanını seçmek için 'USE' kullandık
USE ecommerce_db


-- Kategoriler tablosunu oluştur
CREATE TABLE Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),  -- Kategorinin benzersiz ID'si, otomatik artan
    category_name VARCHAR(255) NOT NULL  -- Kategorinin adı, boş geçilemez
);

-- Ürünler tablosunu oluştur
CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY(1,1),  -- Ürünün benzersiz ID'si, otomatik artan
    product_name VARCHAR(255) NOT NULL,  -- Ürünün adı, boş geçilemez
    category_id INT,  -- Kategorinin ID'si (yabancı anahtar)
    price DECIMAL(10, 2) NOT NULL,  -- Ürünün fiyatı, ondalıklı, boş geçilemez
    stock_quantity INT NOT NULL,  -- Ürünün mevcut stok miktarı
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)  -- Kategoriler tablosuyla ilişkilendirildi
);