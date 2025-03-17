use team148;
-- kitaplar tabloasundaki her seyi göruntuleyin
SELECT * FROM kitaplar;

-- kitaplar tablosundaki kategori sutununu goruntuleyin
SELECT kategori FROM kitaplar;

-- kitaplar tablosundaki kategorisi macera olan kitaplarin
-- isimlerini ve yazarlarini listeyeleyin

/*
===============================================
        TABLODAN SORGULAMA YAPMAK / SELECT
===============================================
*/
/*
Tüm Sütunları Seçme: Eğer tablodaki tüm sütunlardaki verilere ihtiyacınız varsa, 
yıldız işareti (*) kullanarak tüm sütunları seçebilirsiniz. Bu, tablodaki her bir
 sütundan veri getirir.
*/
/*
*************** SYNTAX ***************
SELECT * FROM table_name;
*/
/*
Belirli Sütunları Seçme: Eğer sadece tablonun belirli sütunlarındaki
 verilere ihtiyacınız varsa, bu sütunların adlarını SELECT komutundan
 sonra, FROM komutu ile belirtilen tablo adından önce sıralayabilirsiniz
*/
/*
*************** SYNTAX ***************
SELECT sütun1, sütun2 FROM tablo_adı;
*/

/*
 ===============================================
           WHERE ile Filtreleme
 ===============================================
 */
 
/*
 WHERE koşulu, SQL sorgularında belirli kriterlere göre verileri filtrelemek
 için kullanılır. WHERE ile birlikte karşılaştırma ve mantıksal operatörler,
 daha spesifik ve dinamik sorgular oluşturmak için kullanılabilir.
*/
/*
*************** SYNTAX ***************
SELECT * FROM tablo_adı WHERE sütun = “istenen değer”;
*/

SELECT kitap_adi, yazar_adi FROM kitaplar WHERE kategori = 'macera';

-- kitaplar tablosunda Lev Tolstoy'a ait kitaplarin 
-- ismini, yayin tarihini ve kategorisini listeleyin

SELECT kitap_adi , yayin_yili, kategori FROM kitaplar WHERE yazar_adi ="Lev Tolstoy";


CREATE TABLE kisiler
(
isim VARCHAR(30),
soyisim VARCHAR(30),
yas INT,
sehir VARCHAR(20)
);
INSERT INTO kisiler () VALUES ('Ahmet', 'Yılmaz', 30, 'Ankara');
INSERT INTO kisiler () VALUES ('Mehmet', 'Kara', 25, 'İstanbul');
INSERT INTO kisiler () VALUES ('Ayşe', 'Kaya', 22, 'İzmir');
INSERT INTO kisiler () VALUES ('Fatma', 'Güneş', 28, 'Bursa');
INSERT INTO kisiler () VALUES ('Ali', 'Çelik', 35, 'Antalya');
INSERT INTO kisiler () VALUES ('Elif', 'Demir', 29, 'Ankara');
INSERT INTO kisiler () VALUES ('Can', 'Özdemir', 33, 'İstanbul');
INSERT INTO kisiler () VALUES ('Deniz', 'Arslan', 24, 'İzmir');
INSERT INTO kisiler () VALUES ('Selin', 'Yıldız', 27, 'Bursa');
INSERT INTO kisiler () VALUES ('Emre', 'Koç', 31, 'Antalya');
INSERT INTO kisiler () VALUES ('Zeynep', 'Çınar', 26, 'Konya');
INSERT INTO kisiler () VALUES ('Oğuz', 'Kaplan', 40, 'Samsun');
INSERT INTO kisiler () VALUES ('Burcu', 'Ertuğrul', 22, 'Trabzon');
INSERT INTO kisiler () VALUES ('Kaya', 'Durmaz', 35, 'Diyarbakır');
INSERT INTO kisiler () VALUES ('Seda', 'Aydın', 28, 'Eskişehir');

SELECT * FROM kisiler;

