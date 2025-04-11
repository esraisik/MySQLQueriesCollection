USE northwind;


/*
CASE ifadesi, SQL'de if-else mantığını kullanarak belirli koşullara bağlı olarak farklı sonuçlar 
döndürmeye yarayan bir kontrol yapısıdır.
Özellikle SELECT, UPDATE, DELETE ve GROUP BY gibi ifadeler içinde yaygın olarak kullanılır.

CASE, bir sütunun değerine veya belirli bir duruma göre farklı sonuçlar üretmek için kullanılır.
Bunu, programlama dillerindeki "if-else" yapısına benzetebiliriz.

*/

/*         SYNTAX

CASE 
    WHEN koşul1 THEN sonuç1
    WHEN koşul2 THEN sonuç2
    ELSE varsayılan_sonuç
END


WHEN → Koşulları tanımlar. (Eğer bu şart sağlanıyorsa…)
THEN → Koşul gerçekleştiğinde dönecek değeri belirler.
ELSE → Hiçbir koşul sağlanmazsa çalışacak varsayılan değeri tanımlar (isteğe bağlıdır).
END → CASE bloğunu kapatır.


*/

-- Ürünlerin stokta olup olmadığını kontrol etmek.

SELECT product_name, target_level,
CASE
	WHEN target_level > 0 THEN 'Stokta var'
    ELSE 'Stokta yok'
END stok_durumu
FROM products;

SELECT product_name, target_level,
CASE 
	WHEN target_level = 0 THEN 'Stokta yok'
    WHEN target_level BETWEEN 1 AND 19 THEN 'Stok kritik seviyede'
    WHEN target_level BETWEEN 20 AND 40 THEN 'Stok azaliyor'
    ELSE 'Stok yeterli seviyede'
END stok_durumu
FROM products;    
    

-- Siparişlerin kargoya verilip verilmediğini belirlemek.


SELECT id, order_date, shipped_date,
CASE
	WHEN shipped_date IS NULL THEN 'Siparis beklemede'
    WHEN shipped_date > order_date THEN 'Siparis gonderildi'
    ELSE 'Bilinmeyen durum (sikinti :))'
END siparis_status
FROM orders;    


-- Çalışanları yönetici olup olmamalarına göre sınıflandırmak.

SELECT first_name, last_name, job_title,
CASE
	WHEN job_title LIKE '%Manager%' THEN 'Yonetici'
    ELSE 'Maraba'
END pozisyon
FROM employees;    
    
/*
CASE Kullanımının Avantajları
✔ Koşullu Mantık Kullanımı: SQL sorgularında if-else gibi mantıksal işlemleri yapabilmeyi sağlar.
✔ Kolay Okunabilirlik: Uzun IF-ELSE blokları yerine tek bir CASE ifadesi ile daha okunaklı kod yazılır.
✔ SELECT İçinde Kullanılabilir: Normal bir SELECT sorgusunda, belirli alanlara göre dinamik değerler döndürebilir.
✔ GROUP BY ile Kullanılabilir: CASE WHEN, SUM, COUNT gibi fonksiyonlarla birlikte kullanılabilir.
*/
















