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
	description VARCHAR(MAX),
    category_id INT,  -- Kategorinin ID'si (yabancı anahtar)
    price DECIMAL(10, 2) NOT NULL,  -- Ürünün fiyatı, ondalıklı, boş geçilemez
    stock_quantity INT NOT NULL,  -- Ürünün mevcut stok miktarı
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)  -- Kategoriler tablosuyla ilişkilendirilmiş
); 

-- Müşteriler tablosunu oluştur
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),  -- Müşterinin benzersiz ID'si, otomatik artan
    first_name VARCHAR(255) NOT NULL,  -- Müşterinin adı, boş geçilemez
    last_name VARCHAR(255) NOT NULL,  -- Müşterinin soyadı, boş geçilemez
    email VARCHAR(255) UNIQUE NOT NULL,  -- Müşterinin e-posta adresi, benzersiz olmalı ve boş geçilemez
    phone VARCHAR(20),  -- Müşterinin telefon numarası
    addresss TEXT  -- Müşterinin adres bilgisi
);

-- Siparişler tablosunu oluştur
CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),  -- Siparişin benzersiz ID'si, otomatik artan
    customer_id INT,  -- Siparişi veren kullanıcının ID'si (yabancı anahtar)
    order_date DATETIME DEFAULT GETDATE(),  -- Siparişin verildiği tarih, varsayılan olarak geçerli tarih
    order_status VARCHAR(50) DEFAULT 'Beklemede',  -- Siparişin durumu, varsayılan olarak 'Beklemede'
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Kullanıcılar tablosuyla ilişkilendirilmiş
);

-- Sipariş Detayları tablosunu oluştur
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY IDENTITY(1,1),  -- Sipariş detayının benzersiz ID'si, otomatik artan
    order_id INT,  -- Siparişin ID'si (yabancı anahtar)
    product_id INT,  -- Sipariş edilen ürünün ID'si (yabancı anahtar)
    quantity INT NOT NULL,  -- Sipariş edilen ürün miktarı
    total_amount DECIMAL(10, 2) NOT NULL,  -- Ürünlerin toplam fiyatı
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),  -- Siparişler tablosuyla ilişkilendirilmiş
    FOREIGN KEY (product_id) REFERENCES Products(product_id)  -- Ürünler tablosuyla ilişkilendirilmiş
);

-- Ödemeler tablosunu oluştur
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY IDENTITY(1,1),  -- Ödemenin benzersiz ID'si, otomatik artan
    order_id INT,  -- İlgili siparişin ID'si (yabancı anahtar)
    payment_date DATETIME DEFAULT GETDATE(),  -- Ödemelerin yapıldığı tarih, varsayılan olarak geçerli tarih
    payment_amount DECIMAL(10, 2) NOT NULL,  -- Yapılan ödemenin tutarı
    payment_method VARCHAR(50),  -- Ödeme türü (örneğin: Kredi Kartı, Banka Havalesi vb.)
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)  -- Siparişler tablosuyla ilişkilendirilmiş
);