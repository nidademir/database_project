# E-Ticaret Veritabanı Projesi

Bu proje, e-ticaret veritabanı yapısının temel bileşenlerini içeren bir SQL projesidir. Ürünler, müşteriler, siparişler, ödeme bilgileri ve sipariş detayları gibi ana tabloları içerir.

## Proje Dosyaları

Bu repoda şu dosyalar bulunmaktadır:

- **`create_database.sql`**: Veritabanını oluşturur.
- **`create_tables.sql`**: Veritabanı içindeki tüm tabloları oluşturur.
- **`insert_data.sql`**: Örnek verilerle tabloyu doldurur.
- **`queries.sql`**: Örnek SQL sorguları içerir.


## Kurulum

### 1. Veritabanını Oluşturma

İlk adım olarak veritabanını oluşturmanız gerekir. Bunun için `create_database.sql` dosyasını çalıştırın:

```sql
-- Veritabanını oluşturur
CREATE DATABASE ecommerce_db;
```

### 2. Tabloları Oluşturma

Veritabanını oluşturduktan sonra, gerekli tabloları `create_tables.sql dosyasını` çalıştırarak oluşturabilirsiniz:

```sql
-- Ürünler, müşteriler, siparişler ve ödeme bilgileri gibi tabloları oluşturur
CREATE TABLE Products (...);
CREATE TABLE Customers (...);
CREATE TABLE Orders (...);
CREATE TABLE Payments (...);
CREATE TABLE Order_Details (...);
```

### 3. Örnek Veri Eklemek

Tablolara örnek veriler eklemek için `insert_data.sql` dosyasını çalıştırın:

```sql
-- Ürünler, müşteriler, siparişler ve ödeme verilerini ekler
INSERT INTO Products (...);
INSERT INTO Customers (...);
INSERT INTO Orders (...);
INSERT INTO Payments (...);
INSERT INTO Order_Details (...);
```

### 4. Sorguları Çalıştırma

Veritabanı üzerinde sorgular çalıştırmak için `queries.sql` dosyasını kullanabilirsiniz. Örneğin:

```sql
-- Tüm siparişleri gösterir
SELECT * FROM Orders;

-- Müşterilerin sipariş geçmişini sorgular
SELECT c.first_name, c.last_name, o.order_id, o.order_date 
FROM Orders AS o
JOIN Customers AS c ON o.customer_id = c.customer_id;

-- Ürünlerin toplam satış miktarını gösterir
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Order_Details AS od
JOIN Products AS p ON od.product_id = p.product_id
GROUP BY p.product_name;
```


