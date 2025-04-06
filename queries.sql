-- Tüm müşterilerin listesini getir
SELECT * FROM Customers;

-- ID'si 1 olan müşterinin siparişlerini getir
SELECT * FROM Orders
WHERE customer_id = 1;

-- Sipariş detaylarını müşteri ve ürün isimleri ile birlikte gösterir
SELECT 
    o.order_id,  -- Sipariş ID
    c.first_name + ' ' + c.last_name AS customer_name,  -- Müşteri adı ve soyadını birleştirip adını customer_name yaptık
    p.product_name,  -- Ürün adı
    od.quantity,  -- Ürün adedi
    od.total_amount,  -- Sipariş satırının toplam tutarı
    o.order_date  -- Sipariş tarihi
FROM Order_Details od
JOIN Orders AS o ON od.order_id = o.order_id  -- Sipariş detaylarını, ana sipariş tablosuyla order_id üzerinden ilişkilendirir
JOIN Customers AS c ON o.customer_id = c.customer_id  -- Siparişi veren müşterinin bilgilerine ulaşmak için Customers tablosuna bağlanır
JOIN Products AS p ON od.product_id = p.product_id;  -- Sipariş edilen ürün bilgilerine ulaşmak için Products tablosuna bağlanır


-- Yapılan tüm ödemeleri listeler
SELECT 
    p.payment_id,  -- Ödeme ID
    o.order_id,  -- İlgili sipariş ID
    p.payment_amount,  -- Ödeme miktarı
    p.payment_method,  -- Ödeme türü (Kredi Kartı, Havale vb.)
    p.payment_date  -- Ödeme tarihi
FROM Payments AS p
JOIN Orders AS o ON p.order_id = o.order_id;

-- En çok satılan ürünleri adet bazında azalan sırayla listeler
SELECT 
    p.product_name,  -- Ürün adı
    SUM(od.quantity) AS total_sold  -- Toplam satış miktarı
FROM Order_Details AS od
JOIN Products AS p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;   -- toplam satış miktarını büyükten küçüğe sıraladık