-- Ürün kategorilerini ekle
INSERT INTO Categories (category_name)
VALUES ('Elektronik'),         -- Elektronik cihazlar
	   ('Giyim'),              -- Kıyafet ve tekstil ürünleri
	   ('Ev & Mutfak'),        -- Ev gereçleri ve mutfak ürünleri
       ('Kitap'),              -- Kitap ve yayınlar
	   ('Kozmetik');           -- Makyaj ve bakım ürünleri

-- Ürünleri ekle 
INSERT INTO Products (product_name, description, price, stock_quantity, category_id)
VALUES 
('Kablosuz Mouse', 'Ergonomik tasarıma sahip kablosuz mouse', 229.90, 120, 1),        -- Elektronik
('Bluetooth Kulaklık', 'Şarj edilebilir kablosuz kulaklık', 349.00, 80, 1),           -- Elektronik

('Pamuklu Tişört', '100% pamuk, rahat kesim erkek tişörtü', 149.99, 200, 2),          -- Giyim
('Kot Pantolon', 'Slim fit kadın kot pantolon', 299.90, 150, 2),                      -- Giyim

('Blender', 'Cam hazneli, çok fonksiyonlu mutfak blenderı', 799.00, 60, 3),           -- Ev & Mutfak
('Çay Makinesi', 'Paslanmaz çelik çay makinesi', 649.00, 30, 3),                      -- Ev & Mutfak

('Bilinçaltının Gücü', 'Kişisel gelişim kitabı', 89.90, 100, 4),                      -- Kitap
('Simyacı', 'Dünya çapında bir roman', 59.90, 80, 4),                                 -- Kitap

('Nemlendirici Krem', 'Hassas ciltler için yüz nemlendirici', 119.90, 90, 5),         -- Kozmetik
('Rimel', 'Yoğun siyah hacim veren maskara', 89.50, 110, 5);                          -- Kozmetik

-- Müşteri verilerini ekle
INSERT INTO Customers (first_name, last_name, email, phone, address)
VALUES 
('Ayşe', 'Yılmaz', 'ayse.yilmaz@example.com', '01111111111', 'Muğla, Türkiye'),
('Mehmet', 'Demir', 'mehmet.demir@example.com', '02222222222', 'Ankara, Türkiye'),
('Elif', 'Kaya', 'elif.kaya@example.com', '03333333333', 'İzmir, Türkiye'),
('Ahmet', 'Çelik', 'ahmet.celik@example.com', '04444444444', 'Mersin, Türkiye'),
('Zeynep', 'Aydın', 'zeynep.aydin@example.com', '05555555555', 'Antalya, Türkiye');

-- Sipariş verilerini ekle
INSERT INTO Orders (customer_id, order_date, order_status)
VALUES
(1, '2025-04-01 14:23:00', 'Beklemede'),
(2, '2025-04-02 10:15:00', 'Kargolandı'),
(3, '2025-04-03 09:45:00', 'Teslim Edildi'),
(4, '2025-04-03 16:00:00', 'İptal Edildi'),
(5, '2025-04-04 11:30:00', 'Beklemede');

-- Sipariş detaylarını ekle
INSERT INTO Order_Details (order_id, product_id, quantity, total_amount)
VALUES
(1, 1, 2, 299.98),  -- Sipariş 1: 2 adet Bluetooth Kulaklık (149.99 x 2)
(1, 2, 1, 89.50),   -- Sipariş 1: 1 adet Kablosuz Mouse
(2, 2, 3, 268.50);  -- Sipariş 2: 3 adet Kablosuz Mouse (89.50 x 3)

-- Ödeme bilgilerini ekle
INSERT INTO Payments (order_id, payment_date, payment_amount, payment_method)
VALUES
(1, '2025-04-01 15:00:00', 389.48, 'Kredi Kartı'),   -- Sipariş 1 ödemesi
(2, '2025-04-02 11:00:00', 268.50, 'Banka Havalesi'),-- Sipariş 2 ödemesi
(3, '2025-04-03 10:00:00', 120.00, 'Kapıda Ödeme');  -- Sipariş 3 ödemesi