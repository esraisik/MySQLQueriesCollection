
SELECT * FROM baskentler;

insert into baskentler values ( 'Afganistan', 'Kabil' , '3140853');

/*
Bir SQL file acildiginda ilk olarak 'DISKET' ikonuna 
tiklanarak masaustunde olusturulan klasore file kaydi
tamamlanir.
Ikinci olarak 'USE sys;' komutu ile ilgili SQL file'inin
calisma alani belirlenir.
*/
/*
===============================================
          TABLOYU DEGISTIRME - ALTER TABLE
===============================================*/
/*ALTER TABLE ifadesi, SQL'de mevcut bir veritabanı tablosunun 
yapısını değiştirmek için kullanılır. Bu komut sayesinde, tabloya
 yeni sütunlar ekleyebilir, mevcut sütunları değiştirebilir veya 
 silebilir, sütunların veri türlerini güncelleyebilir, sütunlara 
 kısıtlamalar (constraints) ekleyebilir veya mevcut kısıtlamaları 
 kaldırabilirsiniz. 
 */
 
 
  /*
    Sütun ekleme:
    ALTER TABLE tablo_adi ADD yeni_sutun_adi veri_tipi;
    
    Sütun silme:
    ALTER TABLE tablo_adi DROP COLUMN sutun_adi;
    
    Sütun adını değiştirme (bazı sistemlerde RENAME COLUMN gereklidir):
    ALTER TABLE tablo_adi RENAME COLUMN eski_sutun_adi TO yeni_sutun_adi;
    
    Sütunun veri tipini değiştirme:
    ALTER TABLE tablo_adi ALTER COLUMN sutun_adi TYPE yeni_veri_tipi;
    
    Sütunun varsayılan değerini değiştirme:
    ALTER TABLE tablo_adi ALTER COLUMN sutun_adi SET DEFAULT varsayilan_deger;
    
    Varsayılan değeri kaldırma:
    ALTER TABLE tablo_adi ALTER COLUMN sutun_adi DROP DEFAULT;
    
    Tabloyu yeniden adlandırma:
    ALTER TABLE eski_tablo_adi RENAME TO yeni_tablo_adi;
 */
 
 /*
===============================================
           ALTER TABLE - Sutun Ekleme
===============================================
*/
/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi 
ADD sütun_adi + dataType;
*/
/*  
========================  SORU-1 ========================
 Kitaplar tablosuna sayfa sayisi column'i ekleyiniz.
=========================================================
 */
 
 SELECT * FROM kitaplar;
 
 ALTER TABLE kitaplar ADD sayfa_sayisi INT;
 
 /*
========================  SORU-2 ========================
 Kitaplar tablosuna fiyat column'i ekleyiniz.
=========================================================
 */
 
 ALTER TABLE kitaplar ADD fiyat DOUBLE;
 
 /*
 ===============================================
  ALTER TABLE - Sütunun Data Type Değiştirme
 ===============================================
 */
 
 /*
*************** SYNTAX ***************
ALTER TABLE tablo_adi 
MODIFY COLUMN  sütun_adi + yeniDataType;
*/
 
/*  
========================  SORU-4 ========================
  Personel tablosundaki maas column'inin data type'ini degistiriniz .
=========================================================
 */  
 
ALTER TABLE personel MODIFY COLUMN maas DOUBLE;

SELECT * FROM personel;

/*
===============================================
        ALTER TABLE - Sütun Adını Değiştirme
===============================================
*/
/*
/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi 
RENAME COLUMN  eskiSütunAdi TO yeniSütunAdi;
*/
/*  
========================  SORU-6 ========================
 Personel tablosundaki pozisyon column'in adini sorumluluk olarak degistiriniz.
=========================================================
 */
 
 ALTER TABLE personel 
 RENAME COLUMN pozisyon TO sorumluluk;
 
 /*
========================  SORU-8 ========================
 Personel tablosundaki soyadi column'in adini lastname olarak degistiriniz.
=========================================================
 */
 
 SELECT * FROM personel;
 
ALTER TABLE personel
RENAME COLUMN personel_soyadi TO lastname;
 
 /*
===============================================
      ALTER TABLE - Sütun Silme
===============================================
*/
/*
*************** SYNTAX ***************
ALTER TABLE tablo_adi 
DROP COLUMN  sütun_adi;
*/
 
 /*  
========================  SORU-9 ========================
 Personel tablosundaki ogrenci maas column'ini siliniz.
=========================================================
 */
 
 ALTER TABLE personel
 DROP COLUMN maas;
 
 /*
========================  SORU-10 ========================
      Kitaplar tablosundaki sayfa sayisi column'ini siliniz.
=========================================================
 */
 
 ALTER TABLE kitaplar
 DROP COLUMN sayfa_sayisi;
 
 SELECT * FROM kitaplar;

 
 
 