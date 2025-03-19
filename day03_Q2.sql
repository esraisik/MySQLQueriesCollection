

-- kisiler tablosunu göruntuleyin 
SELECT * FROM kisiler;

-- kisiler tablosundan id kodunu silin
ALTER TABLE kisiler DROP COLUMN id;

/*  
========================  SORU-1 ========================
 Kisiler tablosundan isim ve soy isim bilgilerini listeleyiniz.
=========================================================
 */
 
 SELECT isim,soyisim FROM kisiler;
 
 /*
 ===============================================
           WHERE ile Filtreleme
 ===============================================
 */
 
/*
 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek
 için kullanılır. 
 WHERE ile birlikte karşılaştırma ve mantıksal operatörler,
 daha spesifik ve dinamik sorgular oluşturmak için kullanılabilir.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/

/*  
========================  SORU-3 ========================
 Kisiler tablosundaki sehir= antalya olan kisileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler WHERE sehir = 'Antalya';
 
   /*  
 ========================  SORU-4 ========================
    Kisiler tablosundaki yasi 22 olan kisileri listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE yas= 22;
 
  /*  
 ========================  SORU-5 ========================
    Kisiler tablosundaki sehri Ankara olanlarin yas, isim ve soyisim
    bilgilerini listeleyiniz.
 =========================================================
 */
 
 SELECT yas, isim, soyisim FROM kisiler
 WHERE sehir = 'Ankara';
 
  
 /*
   Büyüktür (>), Küçüktür (<): Sayısal değerlerin büyüklük/küçüklüğünü karşılaştırır.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun_adı > 1;
SELECT * FROM tablo_adı WHERE sütun_adı < 1;
*/

/*  
========================  SORU-7 ========================
    Kisiler tablosundaki yasi 30 `dan buyuk olan kisilerin
    bilgilerini listeleyiniz.
=========================================================
 */
 SELECT * FROM kisiler
 WHERE yas >30;
 
 
/*
===============================================
 CHAR veya VARCHAR türündeki ifadeler için de büyüktür (>) ve küçüktür (<)
 operatörleri kullanılabilir. 
 Bu operatörler, karakter dizileri (stringler)
 arasında alfabetik veya leksikografik karşılaştırma yapar. 
 Bu tür karşılaştırmalar, karakter dizilerinin alfabetik sırasına göre büyük
 veya küçük olup olmadıklarını belirlemek için kullanılır.
 (ASCII tablosundaki yerlerine gore karakterleri siralar)
===============================================*/

/*  
========================  SORU-8 ========================
    Kisiler tablosundaki ismi 'emre' den buyuk olan kisilerin
    isimlerini listeleyiniz.
=========================================================
 */
 
 SELECT isim FROM kisiler 
 WHERE isim > 'Emre';
 
  /*
	MySql case sensitive degildir
    biz case sensitive olmasini ozellikle belirtmedikce
    kucuk buyuk harf ayirimi yapmaz
 */
 
 /*  
========================  SORU-9 ========================
    Kisiler tablosundaki sehri 'D' den buyuk olan sehirlerde
    yasayan kisileri isim ve soyisim  bilgilerini listeleyiniz.
=========================================================
 */
 
 SELECT isim , soyisim, sehir FROM kisiler
 WHERE sehir >'Diyarbakır';
 
  /*  
 ========================  SORU-12 ========================
    Kisiler tablosundaki yasi 35 den kucuk veya 35'e esit olan kisilerin
    bilgilerini listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler 
 WHERE yas <= 35;
 
  
  /*
 ===============================================
   Değildir (<> veya !=): İki değerin birbirine eşit olmadığını kontrol eder.
 ===============================================*/
 
 /*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun_adı <> 1;
SELECT * FROM tablo_adı WHERE sütun_adı != 1;
*/
 
 /*  
 ========================  SORU-13 ========================
    Kisiler tablosundaki sehri Trabzon olmayan kisilerin
    bilgilerini listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE sehir != 'trabzon';
 
 /*  
 ========================  SORU-14 ========================
    Kisiler tablosundaki soyismi Gunes olmayan kisilerin
    bilgilerini listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE soyisim <> 'Gunes';
 
 
/*
===============================================
        Mantiksal Operatorler / AND
===============================================*/
/*
1- "AND" operatörü, birden fazla koşulun aynı anda karşılanması gerektiğinde kullanılır.
2- Tüm "AND" operatörüyle bağlanmış koşulların TRUE olması durumunda sonuç TRUE döner.
3- Eğer koşullardan herhangi biri FALSE ise, sonuç da FALSE olur.
Örnek: SELECT * FROM tablo_adi WHERE sütun1 = 'değer1' AND sütun2 = 'değer2' sorgusu,
hem sütun1'in 'değer1' değerine eşit olduğu hem de sütun2'nin 'değer2' değerine eşit olduğu 
kayıtları secer.
*/
/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı 
WHERE 1sütun_adı = 1 
AND 2sütun_adı = 2 ;
*/

/*
========================  SORU-1 ========================
 Kisiler tablosundan 29 yaşından büyük olan ve Ankara'da yaşayan kişileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE yas > 29 AND sehir = 'Ankara';
 
 /*  
========================  SORU-2 ========================
 Kisiler tablosundan Adı 'Fatma' olan ve Bursa'da yaşayan kişilerin yasini listeleyiniz.
=========================================================
 */
 
 SELECT yas FROM kisiler
 WHERE isim = 'Fatma' AND sehir = 'Bursa';
 
 
 /*  
========================  SORU-3 ========================
 Kisiler tablosundan ismi 'Ayse' ve soyismi 'Kaya' olan kişileri listeleyiniz.
=========================================================
 */ 
 
 
SELECT * FROM kisiler
WHERE isim = 'ayse' AND soyisim = 'kaya';


 /* 
 ===============================================
                   BETWEEN
 ===============================================*/
 
 /*
 BETWEEN anahtar kelimesi, SQL'de bir aralıktaki değerleri seçmek için kullanılır.
 Bu anahtar kelime genellikle sayısal değerler, tarihler ve metinlerle kullanılır
 ve belirtilen iki değer arasındaki tüm değerleri kapsar. 
 BETWEEN ile belirlenen aralık her iki uç değeri de içerir, yani "başlangıç" ve "bitiş"
 değerleri sorgu sonuçlarına dahildir.
*/
 
 /*
*************** SYNTAX ***************
SELECT sütun_adı
FROM tablo_adı
WHERE sütun_adı BETWEEN değer1 AND değer2;
*/
 
 /*  
 ========================  SORU-4 ========================
 Kisiler tablosundan yaşı 25 ile 35 arasında olan kişileri listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE yas BETWEEN 25 AND 35;

 
 
 /*  
========================  SORU-5 ========================
 Kisiler tablosundan yaşı 25 ile 35 arasında olan ve Ankara'da yaşayan kişileri listeleyiniz.
=========================================================
 */ 
 
 SELECT * FROM kisiler
 WHERE yas BETWEEN 25 AND 35
 AND sehir = 'Ankara';
 
 /*  
 ======================== Extra ========================
   Kisiler tablosundan ismi Adem ile Aylin arasında olan ve 
   Ankara'da yaşayan kişileri listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE isim BETWEEN 'Adem' AND 'Aylin'
 AND sehir = 'Ankara';
 
 -- BETWEEN yerine iki tane kucuk buyuk isareti Kullanilabilir mi ?
 
 SELECT * FROM kisiler
 WHERE isim >= 'Adem' AND isim<= 'Aylin'
 AND sehir = 'Ankara';
 
 /*
===============================================
        Mantiksal Operatorler / OR
===============================================*/

/*
1- "OR" operatörü, birden fazla koşuldan en az birinin karşılanması 
   gerektiğinde kullanılır.
2- Koşullardan herhangi biri TRUE ise, sonuç TRUE döner.
3- Tüm koşullar FALSE ise, sonuç FALSE olur.

Örnek: SELECT * FROM tablo_adi WHERE sütun1 = 'değer1' OR 
sütun2 = 'değer2' sorgusu, sütun1'in
'değer1' değerine eşit olduğu veya sütun2'nin 'değer2' 
değerine eşit olduğu kayıtları seçer.
*/


/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı 
WHERE 1sütun_adı = 1 
OR 2sütun_adı = 2 ;
*/


/*  
========================  SORU-6 ========================
 Kisiler tablosundan yaşı 22 veya 35 olan kişileri listeleyiniz.
=========================================================
 */
 
SELECT * FROM kisiler
WHERE yas=22 OR yas=35;
 
 
  /*  
========================  SORU-1 ========================
 Kisiler tablosundan 29 yaşından büyük olan veya Ankara'da yaşayan kişileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE yas > 29 OR sehir = 'Ankara';
 
 
 /*  
========================  SORU-7 ========================
 Kisiler tablosundan İstanbul, Ankara veya İzmir'de yaşayan kişileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE sehir = 'Ankara' OR sehir = 'Istanbul' OR sehir = 'Izmir';
 
 
 /*
===============================================
                  IN OPERATORU
===============================================*/
/*

/*
 SQL'de IN operatörü, belirli bir sütunun değerlerini belirtilen bir değerler
 listesiyle karşılaştırmak için kullanılır. 
 Bu operatör, sorgulanacak değerlerin
 bir listesini parantez içinde alır ve belirtilen sütunun değeri bu listedeki 
 herhangi bir değerle eşleşirse, o satırı sonuç kümesine dahil eder. 
 IN operatörü, birden çok OR koşulunu daha okunaklı 
 ve kısa bir şekilde yazmanın bir yoludur.
*/

/*
*************** SYNTAX ***************
SELECT sütun_adları
FROM tablo_adi
WHERE sütun_adi IN (değer1, değer2, ..., değerN);
*/

/*  
========================  SORU-8 ========================
 Kisiler tablosundan İstanbul, Ankara veya İzmir'de yaşayan kişileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE sehir IN ('Istanbul', 'Ankara', 'Izmir');
 
 
 /*  
========================  SORU-9 ========================
    Kisiler tablosundan adı 'Ahmet', 'Mehmet' veya 'Ayşe' olan kişileri listeleyiniz.
=========================================================
 */
 
 SELECT * FROM kisiler
 WHERE isim IN ('Ahmet', 'Mehmet', 'Ayşe');
 
 /*
 ===============================================
        Mantiksal Operatorler / NOT
 ===============================================*/
 
/*
1- "NOT" operatörü, bir koşulun sonucunu tersine çevirmek için kullanılır.
2- Eğer koşul TRUE ise, "NOT" operatörü sonucu FALSE yapar; koşul FALSE ise, sonucu TRUE yapar.
3- Genellikle "NOT IN", "NOT EXISTS", "NOT LIKE" gibi ifadelerde kullanılır.

Örnek: SELECT * FROM tablo_adi WHERE NOT sütun1 = 'değer1' sorgusu, sütun1'in 
'değer1' değerine eşit olmayan tüm kayıtları seçer.
*/

/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı 
WHERE NOT sütun_adı = 1;
*/

/*  
========================  SORU-11 ========================
 Kisiler tablosundan  İstanbul'da yaşamayan kişileri listeleyiniz.
=========================================================
 */
 
 
 SELECT * FROM kisiler
 WHERE sehir != 'istanbul';
 
 SELECT * FROM kisiler
 WHERE sehir <> 'istanbul';
 
 SELECT * FROM kisiler
 WHERE NOT sehir = 'istanbul';
 
 /*  
========================  SORU-11 ========================
 Kisiler tablosundan  İstanbul, Izmir veya Ankara'da yaşamayan kişileri listeleyiniz.
=========================================================
 */
 
 
 SELECT * FROM kisiler
 WHERE sehir != 'Ankara' AND sehir != 'Istanbul' AND sehir != 'Izmir';
 
 /*
 SELECT * FROM kisiler
 WHERE sehir != 'Ankara' OR sehir != 'Istanbul' OR sehir != 'Izmir';
 bu kod yanlis olur
 Cunku OR operatoru iyimserdir
 ornegin sehri Ankara olan bir kisi icin 2. ve 3. karsilastirmalar TRUE verir
         OR operatoru 1 tane bile true gorse sonucu true yapar ve listeye ekler 
 */
 
 SELECT * FROM kisiler
 WHERE NOT sehir IN ('Ankara', 'Istanbul', 'Izmir');
 
 
 /*  
========================  SORU-12 ========================
 Kisiler tablosundan 30 yaşından büyük olmayan kişileri listeleyiniz.
=========================================================
 */
 
SELECT * FROM kisiler
WHERE NOT yas >30;


SELECT * FROM kisiler
WHERE yas < 31;

SELECT * FROM kisiler
WHERE yas <= 30;
 
 
 /*  
 ========================  SORU-14 ========================
 Kisiler tablosundan soyadı 'Yılmaz' veya 'Kara' olmayan kişileri listeleyiniz.
 =========================================================
 */
 
 SELECT * FROM kisiler
 WHERE NOT soyisim IN ('Yılmaz','Kara');
  
 
