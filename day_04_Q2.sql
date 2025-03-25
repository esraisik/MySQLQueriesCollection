
/*
 Bir database ile calısmaya baslamak icin
 ilk yapılması gereken DATABASE'e baglanmaktır.
 Belki Local'de calısırken use kullanmasak sorguları yapabiliriz
 AMMAAAAmantik olarak oncelikle database'e baglanmayı dusunmeliyiz
 */
 
 use team148;
 
 /* 
===============================================
               SELECT - DISTINCT
===============================================
   */
/*
 DISTINCT anahtar kelimesi SQL'de, bir sorgu sonucu setinden
 yalnızca benzersiz (tekrar etmeyen) değerleri seçmek için 
 kullanılır. Tekrarlanan verilerin filtrelenmesi ve veri 
 setinden tekil kayıtların alınması gerektiğinde bu ifade 
 devreye girer.
DISTINCT genellikle SELECT ifadesiyle birlikte kullanılır 
ve SELECT sorgusunun hemen ardından gelir.
*/
/*
*************** SYNTAX ***************
SELECT DISTINCT sütun_adı
FROM tablo_adı;
*/

SELECT * FROM kitaplar;

-- tum kitaplari tekrarsiz olarak listeleyin
SELECT DISTINCT kitap_adi FROM kitaplar;

-- tum yazarlari tekrarsiz olarak listeleyin
SELECT DISTINCT yazar_adi FROM kitaplar;

-- 1860 ile 1890 yillari arasında kitap yayinlayan yazarları TEKRARSIZ olarak listeleyin

SELECT DISTINCT yazar_adi FROM kitaplar
WHERE yayin_yili BETWEEN 1860 AND 1890;

/* 
===============================================
               ORDER BY
===============================================*/
/*
    ORDER BY, LIMIT VE OFFSET gibi filtreleme ifadeleri
    database uzerinde degil bize donen sonuc uzerinde 
    filtreleme yapar. Database de bir degisiklik yapmaz.
/*
   ORDER BY ifadesi, SQL sorgularında sonuçları belirli bir
   veya birden fazla sütuna göre sıralamak için kullanılır.
   Bu ifade, sıralama işleminin yükselen (ascending) veya 
   azalan (descending) düzeninde yapılmasını sağlar. 
   ASC anahtar kelimesi yükselen sıralamayı (dogal),
   DESC anahtar kelimesi ise azalan sıralamayı(ters) belirtir.
   
    ozellikle belirtilmediyse sorgu dogal siralamaya uygun olarak 
   (ASC) yapilir.
*/
/*
*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adı
ORDER BY sıralanacak_sütun ASC|DESC;
*/


CREATE TABLE kitaplik (
    id INT,
    kitap_adi VARCHAR(100),
    yazar VARCHAR(50),
    yayin_yili INT
);
INSERT INTO kitaplik (id, kitap_adi, yazar, yayin_yili)
VALUES
(1, 'Sefiller', 'Victor Hugo', 1862),
(2, '1984', 'George Orwell', 1949),
(3, 'Suç ve Ceza', 'Fyodor Dostoyevski', 1866),
(4, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 1943),
(5, 'Yabancı', 'Albert Camus', 1942),
(6, 'Ulysses', 'James Joyce', 1922),
(7, 'Yüzüklerin Efendisi', 'J.R.R. Tolkien', 1954),
(8, 'Harry Potter ve Felsefe Taşı', 'J.K. Rowling', 1998),
(9, 'Da Vinci Şifresi', 'Dan Brown', 2003),
(10, 'Zamanın Kısa Tarihi', 'Stephen Hawking', 1998),
(11, 'Karamazov Kardeşler', 'Fyodor Dostoyevski', 1880),
(12, 'Budala', 'Fyodor Dostoyevski', 1869),
(13, 'Savaş ve Barış', 'Lev Tolstoy', 1866),
(14, 'Anna Karenina', 'Lev Tolstoy', 1877),
(15, 'Hobbit', 'J.R.R. Tolkien', 1942);

SELECT * FROM kitaplik;

/*  
============================= SORU-4 =============================
    Kitaplik tablosundaki kitapları yayın yılına göre eski olanlardan
    yeni olanlara doğru sıralayiniz.
===================================================================
*/
SELECT kitap_adi, yayin_yili FROM kitaplik
ORDER BY yayin_yili;

/*
============================= SORU-5 =============================
    Kitaplik tablosundaki kitapların yayın yılına göre yeni olanlardan
    eski olanlara doğru sıralayiniz.
===================================================================
*/

SELECT kitap_adi, yayin_yili FROM kitaplik
ORDER BY yayin_yili DESC;


/*
============================= SORU-6 =============================
    Kitaplik tablosundaki "Fyodor Dostoyevski"nin kitaplarını yayın
    yılına göre eskiden gunumuze sıralayiniz.
===================================================================
*/

SELECT kitap_adi, yayin_yili FROM kitaplik
WHERE yazar = 'Fyodor Dostoyevski'
ORDER BY yayin_yili;

/*
============================= SORU-7 =============================
    Kitaplik tablosundaki yazarlarin isimlerini ters siralayiniz.
===================================================================
*/

SELECT yazar FROM kitaplik
ORDER BY yazar DESC;

/*
============================= SORU-7 =============================
    Kitaplik tablosundaki ismi K harfi ile T harfi arasında olan
    yazarlarin isimlerini ters siralayiniz.
===================================================================
*/

SELECT yazar FROM kitaplik
WHERE yazar BETWEEN 'K' AND 'T'
ORDER BY yazar DESC;

/*
============================= SORU-8 =============================
    Kitaplik tablosundaki "Lev Tolstoy" un kitaplarını isimlerine
    göre dogal sırayiniz.
===================================================================
*/

SELECT kitap_adi FROM kitaplik
WHERE yazar = 'Lev Tolstoy'
ORDER BY kitap_adi;

/*
============================= SORU-9 =============================
    Kitaplik tablosundaki yazar isimlerini ve kitaplarini
    dogal sıralayiniz.
===================================================================
*/

SELECT yazar, kitap_adi FROM kitaplik
ORDER BY yazar, kitap_adi;

-- ORDER BY komutundan sonra yazilan sutunlardan ilkinden baslanir
-- esitlik devam ediyorsa ikinciye gecilir eger esitlik bozulmussa
-- ucuncuye gecilmez. 
-- Ancak esitlik devam ediyorsa esitlik bozulana
-- kadar var olan sutunlarda siralama yapmaya devam eder.
/*
============================= SORU-11 =============================
    Kitaplik tablosundaki kitaplari yayin yilina gore gunumuzden eskiye
    ve yazar isimlerini dogal sıralayiniz.
===================================================================
*/

SELECT kitap_adi ,yayin_yili, yazar FROM kitaplik
ORDER BY yayin_yili DESC, yazar ASC;







