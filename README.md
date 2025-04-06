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