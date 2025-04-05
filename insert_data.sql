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