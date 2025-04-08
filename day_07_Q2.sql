use team148;


-- ====================== UNION ======================
/*  
   1-Iki farkli sorgulamanin sonucunu birlestiren islemdir.
    Iki veya daha fazla Sorgu ifadesinin sonuc kumelerini 
    birlestirerek tek bir sonuc kumesi olusturur.
    
   2.sorgunun sonuna ORDER BY komutunu kullanirsaniz 
    tum tabloyu istediginiz siralamaya gore siralar. 
    
  NOT: Secilen Field SAYISI'nin ayni olmasi zorunludur.
    ve DATA TYPE'i ayni olmasi sonucun anlamli olmasi icin onemlidir.  
    
     Syntax:
    ----------
    SELECT sutun_adi,sutun_adi2, .. FROM tablo_adi1
    UNION 
    SELECT sutun_adi1, sutun_adi2, .. FROM tablo_adi2;
    
    NOT: UNION operatoru SADECE benzersiz degerleri alir. 
    Benzer verileri almak icin UNION ALL kullanilir.
    
 */  
 
 CREATE TABLE kadro(
id int,
isim varchar(50),
sehir varchar(50),
maas int,
sirket varchar(20)
);
 
INSERT INTO kadro VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');
INSERT INTO kadro VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');
INSERT INTO kadro VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500,'Honda');
INSERT INTO kadro VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');
INSERT INTO kadro VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO kadro VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');
INSERT INTO kadro VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');
INSERT INTO kadro VALUES(345678902, 'Mehmet Ozturk', 'Izmir', 3500,'Honda');   
 
 SELECT * FROM kadro;
 
 -- 1) Honda ve Tofas'ta calisan benzersiz isimdeki personelleri listeleyin
 
 SELECT  DISTINCT isim FROM kadro
 WHERE sirket IN ('Honda','Tofas');
 
 SELECT isim FROM kadro
 WHERE sirket = 'Honda'
 
 UNION
 
 SELECT isim FROM kadro
 WHERE sirket = 'Tofas';


-- 1) Honda ve Tofas. Ford'ta calisan benzersiz isimdeki personelleri listeleyin
 
 SELECT isim FROM kadro
 WHERE sirket = 'Honda'
 
 UNION
 
 SELECT isim FROM kadro
 WHERE sirket = 'Tofas'
 
 UNION
 
 SELECT isim FROM kadro
 WHERE sirket = 'Ford';
 
 
 -- Maasi 4000'den fazla olan isci isimlerini ve 
 -- 5000'den fazla maas alinan sehirleri 
 -- ayni sutunda alt alta gosteren sorguyu yaziniz
 
 SELECT isim AS isim_veya_sehir FROM kadro
 WHERE maas>4000
 UNION
 SELECT sehir FROM kadro
 WHERE maas>5000;
 
 
 -- 5000'den az maas alanlarin , buna ek olarak Honda calisani olmayanlarin
 -- isim bilgilerini listeleyiniz.
 
 SELECT isim FROM kadro
 WHERE maas>5000
 UNION
 SELECT isim FROM kadro
 WHERE NOT  sirket = 'Honda';
 
 SELECT*FROM people;
 
 -- kadro ve people tablolarındaki kayıtları listeleyin
 
 SELECT*FROM kadro
 UNION
 SELECT*FROM people;
 
 -- puanlar ve people tablolarındaki kayıtları listeleyin
 
 /*

 surun sayilari farklı oldugu icin hata verdi
 
 SELECT*FROM puanlar
  UNION
 SELECT*FROM people;
 
 */

 