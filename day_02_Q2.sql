
use team148;

/*
===============================================
          TABLOYA VERI GIRISI - INSERT
===============================================
*/
/*
-------------------- NOT -------------------------
   Degerleri girerken dikkat edilmesi gerekenler;
   
1- Tabloyu olustururken hangi data type belirlediysek o
   datatype cinsinden veri girisi yapmaliyiz
   
2- Metin ifadeleri 'tek tirnak' icinde yaziyoruz.

3- DATE data type'da 'tek tirnak' icinde yazilir.

4- MySQL'in default tarih formati YYYY-MM-DD seklindedir.

5- Eger kayit olusturulurken  tablodaki tum sutunlara deger girilecekse
   sutun isimlerini tek tek yazmaya gerek olmadan degerleri girebiliriz.
   Ancak tum sutunlara degil belirli sutunlara giris yapacaksak
   hangi sutunlara giris yapacagımızı belirtmemiz gerekir
--------------------------------------------------
*/

/*
*************** SYNTAX ***************
INSERT INTO table_name (columns)
    VALUES (
    std_id ,           
    std_name ,     
    std_age                   
    );
*/  

-- kitaplar tablosundaki her seyi goruntuleyin

SELECT * FROM kitaplar;

-- kitaplar tablosuna tüm sutunlara deger girerek bir kayit ekleyelim

INSERT INTO kitaplar()
 VALUES (1,'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi');
 
 
 -- kitaplar tablosundaki her seyi yeniden goruntuleyin
 -- SQL'de bir komutu calistirmak icin yrniden yazmak SART DEGİLDİR
 -- daha once yazdıgımız bir komutu secip calistirabiliriz
 
 /*
 Query sayfasindaki komutlar database'den bagimsizdir
    Bu komutlar HER CALİSTİGİNDA kendisine verilen görevi yeniden yapar
    Quey calisirken daha once Database'e kaydedilip kaydedilmemesine bakmaz
    ornegin 45. satirdaki kayit ekleme komutunu iki kere calistiralim
    
    */


INSERT INTO kitaplar() 
VALUES (1,'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi');

-- Eger tablo ile ilgili kitap_id UNIQUE olsun veya 
-- kitap_adi NULL OLMASIN gibi belirli sartlar koymak isterseniz
-- tablo olusturulurken bu sinirlamalari belirtmeliyiz


-- kitaplar tablosuna id'si 11 ve kitap_ismi 'Araba Sevdasi' olan bir kitap ekleyin

INSERT INTO kitaplar(kitap_id,kitap_adi) 
VALUES (11,'Araba Sevdasi');

SELECT * FROM kitaplar;

/*  
========================  SORU-2 ========================
 Kitaplar tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */
 
INSERT INTO kitaplar ()
VALUES  (1,	'Savaş ve Barış',	'Lev Tolstoy',	1869,	'Tarihi' ),
		(2,	'Suç ve Ceza',	'Fyodor Dostoyevski',	1866, 	'Psikolojik'),
		(3,	'Anna Karenina',	'Lev Tolstoy',	1877,	'Aşk'),
		(4,	'1984',	'George Orwell',	1949,	'Politik'),
		(5,	'Büyük Umutlar',	'Charles Dickens',	1861,	'Dram'),
		(6,	'Don Kişot',	'Miguel de Cervantes',	1605,	'Macera'),
		(7,	'Gurur ve Önyargı',	'Jane Austen',	1813,	'Dram'),
		(8,	'Monte Kristo Kontu',	'Alexandre Dumas',	1844,	'Macera'),
		(9,	'Faust',	'Johann Wolfgang von Goethe',	1808,	'Felsefi'),
		(10,	'Ulysses',	'James Joyce',	1922,	'Modernist');


/*  
========================  SORU-3 ========================
 Personel tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */

SELECT * FROM personel;

INSERT INTO personel() 
VALUES(1, 'Ahmet', 'CELİK', '1988-10-06', 'Muhasebeci', 45000),
	  (2, 'Ayse', 'DEMİR', '1988-12-06', 'Mudur', 55000);
      
INSERT INTO personel () 
 VALUES (1,'Ceren',' Kiliç', '1997-03-06' ,'Sdet',70000),
		(2,'Esra', 'Isik','1993-05-05','Product Owner',70000),
        (3,'Ipek', 'Sozbir','1995-03-06','SDET',70000);
        
        
        /*  
    ========================  EXTRA ========================
    Icerisinde urun id, musteri isim ve urun isim columnlari
    olan bir musteriler tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE musteriler (
 urun_id INT,
 musteri_isim VARCHAR(40),
 urun_isim VARCHAR(40)
 
 );
 -- musteriler tablosundaki tum datalari goruntıleyin
 
 SELECT * FROM musteriler;
 
 INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler  VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');

-- musteriler tablosundaki musteri_isim lerini listeleyin

SELECT musteri_isim FROM musteriler;

/*
    ========================  EXTRA ========================
    Icerisinde ulke_adi, ulke_adi_uzun_yazilis,
    ISO_Kodu, ulke_kodu, baskent_turkce ve baskent_ingilizce columnlari 
    olan bir ulkeler tablosu create ediniz.
    =========================================================
 */
 
 CREATE TABLE ulkeler (
 ulke_adi VARCHAR(50), 
 ulke_adi_uzun_yazilis  VARCHAR(50),
 ISO_Kodu CHAR(3), 
 ulke_kodu CHAR(2),
 baskent_turkce  VARCHAR(50), 
 baskent_ingilizce  VARCHAR(50)
  
 );
 
 SELECT * FROM ulkeler;
 
insert into ulkeler values('Afganistan', 'Afganistan İslam Cumhuriyeti', 'AFG', 'AF', 'Kâbil', 'Kabul');
insert into ulkeler values('Almanya', 'Almanya Federal Cumhuriyeti', 'DEU', 'DE', 'Berlin', 'Berlin');
insert into ulkeler values('Andora', 'Andora Prensliği', 'AND', 'AD', 'Andora La Vella', 'Andorra la Vella');
insert into ulkeler values('Arjantin', 'Arjantin Cumhuriyeti', 'ARC', 'AR', 'Buenos Aires', 'Buenos Aires');
insert into ulkeler values('Arnavutluk', 'Arnavutluk Cumhuriyeti', 'ALB', 'AL', 'Tiran', 'Tiran');
insert into ulkeler values('Azerbaycan', 'Azerbaycan Cumhuriyeti', 'AZE', 'AZ', 'Bakü', 'Baku');
insert into ulkeler values('Bahama Adaları', 'Bahama Milletler Topluluğu', 'BHS', 'BS', 'Nassau', 'Nassau');
insert into ulkeler values('Bahreyn', 'Bahreyn Krallığı', 'BHR', 'BH', 'Manama', 'Manama');
insert into ulkeler values('Bangladeş', 'Bangladeş Halk Cumhuriyeti', 'BGD', 'BD', 'Dakka', 'Dhaka');
insert into ulkeler values('Belçika', 'Belçika Krallığı', 'BEL', 'BE', 'Brüksel', 'Brussels');

-- ulke adi ve ulke kodu surunlarini listeleyin
SELECT ulke_adi,ulke_kodu FROM ulkeler;

-- ulke baskent isimlerini turkce ve ingilizce olarak listeleyin

SELECT baskent_turkce, baskent_ingilizce FROM ulkeler;

/*  
    ========================  EXTRA ========================
    Icerisinde ulke_adi, baskent_turkce ve baskent_nufusu columnlari olan
    bir baskentler tablosu create ediniz. 
    =========================================================
 */
 
 CREATE TABLE baskentler (
  ulke_adi VARCHAR(30),
  baskent_turkce VARCHAR(30),
  baskent_nufusu INT
 );
 
 -- tum tabloyu goruntuleyin
 
 SELECT * FROM baskentler;
 

 /*  
========================  EXTRA ========================
 baskentler tablosuna null deger olmadan coklu veri girisi saglayiniz.
=========================================================
 */

insert into baskentler values('Afganistan', 'Kâbil', '3140853');
insert into baskentler values('Almanya', 'Berlin', '3520000');
insert into baskentler values('Andora', 'Andora La Vella', '22884');
insert into baskentler values('Arjantin', 'Buenos Aires', '2891082');
insert into baskentler values('Arnavutluk', 'Tiran', '763634');
insert into baskentler values('Azerbaycan', 'Bakü', '2204200');
insert into baskentler values('Bahama Adaları', 'Nassau', '248948');
insert into baskentler values('Bahreyn', 'Manama', '140616');
insert into baskentler values('Bangladeş', 'Dakka', '8906000');
insert into baskentler values('Belçika', 'Brüksel', '1080790'); 
