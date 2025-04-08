use team148;

/*============================== JOIN ISLEMLERI ===============================
 Union,Union All Operatorleri farkli tablolardaki sutunlari 
 birlestirmek icin kullanilir.
 
    Join islemleri ise farkli Tablolari birlestirmek icin kullanilir. Diger 
    bir ifade ile farkli tablolardaki secilen sutunlar ile yeni bir tablo 
    olusturmak icin kullanilabilir.
    
    JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Cunku
    Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
    icin JOIN islemleri kullanilabilir.
    
    
mySQL'de 3 Cesit Join islemi kullanilabilmektedir. 
   
    1) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
    2) LEFT JOIN:  Ilk tabloda (Sol) olan sonuclari gosterir
    3) RIGHT JOIN:  Ikinci tabloda (Sag) olan tum sonuclari gosterir 
    
 FULL JOIN=(left join + union + right join) Tablodaki tum sonuclari gosterir
*/


CREATE TABLE sirket 
(
    sirket_id INT , 
    sirket_isim VARCHAR(20)
);

    INSERT INTO sirket VALUES(100, 'Toyota');
    INSERT INTO sirket VALUES(101, 'Honda');
    INSERT INTO sirket VALUES(102, 'Ford');
    INSERT INTO sirket VALUES(103, 'Hyundai');
    
CREATE TABLE siparisler    
(
    siparis_id INT,
    sirket_id INT, 
    siparis_tarihi DATE
    
);

    INSERT INTO siparisler VALUES(11, 101, '2020-04-17');
    INSERT INTO siparisler VALUES(22, 102, '2020-04-18');
    INSERT INTO siparisler VALUES(33, 103, '2020-04-19');
    INSERT INTO siparisler VALUES(44, 104, '2020-04-20');
    INSERT INTO siparisler VALUES(55, 105, '2020-04-21');    
    
SELECT * FROM sirket;
SELECT * FROM siparisler;


/*=============================== INNER JOIN  ==================================
    
    Iki tablonun kesisim kumesi ile yeni bir tablo olusturmak icin kullanilir.
    
    1) Select'ten sonra tabloda gormek istediginiz sutunlari yazarken
       table_name.field_name seklinde yazin.
    2) From'dan sonra table_name yazarken 
       1. table_name + INNER JOIN + 2. table_name yazmaliyiz.
    3) Join'i hangi kurala gore yapacaginizi belirtmelisiniz. 
       Bunun icin ON kuralimiz yazilmali.
    
    Syntax
    -----------
    SELECT table_name.sutun1,table_name.sutun2....sutunN
    FROM tablo1 
    INNER JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
================================================================================*/
-- Iki Tabloda sirket_id'si ayni olanlarin sirket_ismi, siparis_id ve 
-- siparis_tarihleri listeleyen bir sorgu yaziniz.

SELECT sirket.sirket_isim, siparisler.siparis_id, siparisler.siparis_tarihi
FROM siparisler INNER JOIN sirket
ON siparisler.sirket_id = sirket.sirket_id;



/*=============================== LEFT JOIN  ==================================
    
    LEFT JOIN, 1. tablodan (sol tablo) SELECT ile ifade edilen sutunlara ait tum
    satirlari getirir. 
    Ancak, diger tablodan sadece ON ile belirtilen kosula uyan satirlari getirir. 
    
    1) Left Join'de ilk tablodaki tum record'lar gosterilir.
    2) Ilk tablodaki datalara 2.tablodan gelen ek datalar 
       varsa bu ek datalar ortak datalar icin gosterilir, 
       ancak ortak olmayan datalar icin o kisimlar bos kalir.
    3) Ilk yazdiginiz Tablonun tamamini aldigi icin hangi tabloyu
       istedigimize karar verip once onu yazmaliyiz. 
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
==============================================================================*/
/* -----------------------------------------------------------------------------
  ORNEK2: sirket tablosundaki tum sirketleri ve bu sirketlere ait olan 
  siparis_id ve siparis_tarihleri listeleyen bir sorgu yaziniz.
------------------------------------------------------------------------------*/

SELECT sir.sirket_isim, sip.siparis_id, sip.siparis_tarihi
FROM sirket sir LEFT JOIN siparisler sip
ON sip.sirket_id= sir.sirket_id;



/*=============================== RIGHT JOIN  ==================================
    
    RIGHT JOIN, 2. tablodan (sag tablo) SELECT ile ifade edilen sutunlara ait tum
    satirlari getirir. 
    Ancak, diger tablodan sadece ON ile belirtilen kosula uyan satirlari getirir. 
    
    1) Right Join'de ikinci tablodaki tum record'lar gosterilir.
    2) Ikinci tablodaki datalara 1.tablodan gelen ek datalar 
       varsa bu ek datalar ortak datalar icin gosterilir, 
       ancak ortak olmayan datalar icin o kisimlar bos kalir.
    
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 RIGHT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
==============================================================================*/ 
-- siparisler tablosundaki tum sirketleri ve bu sirketlere ait olan 
-- siparis_id ve siparis_tarihleri listeleyen bir sorgu yaziniz.

SELECT sir.sirket_isim, sip.siparis_id, sip.siparis_tarihi
FROM sirket sir RIGHT JOIN siparisler sip
ON sip.sirket_id= sir.sirket_id;

SELECT sir.sirket_isim, sip.siparis_id, sip.siparis_tarihi
FROM siparisler sip LEFT JOIN sirket sir
ON sip.sirket_id= sir.sirket_id;

/*=============================== FULL JOIN  ==================================
    
    FULL JOIN (LEFT JOIN + UNION + RIGHT JOIN)
    FULL JOIN her iki tablo icin secilen sutunlara ait olan 
    satirlari getirmek icin kullanilir.
    
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    UNION
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    RIGHT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;    
    
    FULL JOIN de iki tabloda var olan tum recordlar getirilir.
    Bir tabloda olup obur tabloda olmayan recordlar bos kalir.
    
==============================================================================*/
  -- sirket ve siparisler adindaki tablolarda yer alan tum sirket_id'leri icin,
  -- sirket_id, sirket_isim, siparis_id ve siparis_tarihleri'ni
  -- listeleyen bir query yaziniz
  
  SELECT sir.sirket_isim,sir.sirket_isim,sip.siparis_id,sip.siparis_tarihi
FROM sirket sir LEFT JOIN siparisler sip
ON sip.sirket_id = sir.sirket_id
UNION
SELECT sir.sirket_isim,sir.sirket_isim,sip.siparis_id,sip.siparis_tarihi
FROM sirket sir RIGHT JOIN siparisler sip
ON sip.sirket_id = sir.sirket_id;





CREATE TABLE bolumler (
      bolum_id   INT PRIMARY KEY,
      bolum_isim VARCHAR(14),
      konum      VARCHAR(13)
    );
 
 
    INSERT INTO bolumler VALUES (10,'MUHASEBE','IST');
    INSERT INTO bolumler VALUES (20,'MUDURLUK','ANKARA');
    INSERT INTO bolumler VALUES (30,'SATIS','IZMIR');
    INSERT INTO bolumler VALUES (40,'ISLETME','BURSA');
    INSERT INTO bolumler VALUES (50,'DEPO', 'YOZGAT');
    INSERT INTO bolumler VALUES (60,'SATIS', 'CORUM');
    
 CREATE TABLE personeller (
      personel_id   INT ,
      personel_isim VARCHAR(10),
      meslek        VARCHAR(9),
      mudur_id      INT,
      maas          INT,
      bolum_id      INT,
      CONSTRAINT bolumID_fk FOREIGN KEY(bolum_id)
      REFERENCES bolumler(bolum_id)
    );
    
    
    INSERT INTO personeller VALUES (7369,'AHMET','KATIP',1111,800,20);
    INSERT INTO personeller VALUES (7499,'BAHATTIN','SATIS',1222,1600,30);
    INSERT INTO personeller VALUES (7521,'NESE','SATISE',1222,1250,30);
    INSERT INTO personeller VALUES (1111,'MUZAFFER','MUDUR',7839,2975,20);
    INSERT INTO personeller VALUES (7654,'MUHAMMET','SATIS',1222,1250,30);
    INSERT INTO personeller VALUES (1222,'EMINE','MUDUR',7839,2850,30);
    INSERT INTO personeller VALUES (1333,'HARUN','MUDUR',7839, 2450,10);
    INSERT INTO personeller VALUES (7788,'MESUT','ANALIST',1111,3000,20);
    INSERT INTO personeller VALUES (7839,'SEHER','BASKAN',NULL,5000,10);
    INSERT INTO personeller VALUES (7844,'DUYGU','SATIS',1222,1500,30);
    INSERT INTO personeller VALUES (7876,'ALI','KATIP',1111,1100,20);
    INSERT INTO personeller VALUES (7900,'MERVE','KATIP',1222,950,30);
    INSERT INTO personeller VALUES (7902,'NAZLI','ANALIST',1111,3000,20);
    INSERT INTO personeller VALUES (7934,'EBRU','KATIP',1333,1300,10);
    INSERT INTO personeller VALUES (7956,'SIBEL','MIMAR',1333,3300,60);
    INSERT INTO personeller VALUES (7933,'ZEKI','MUHENDIS',1333,4300,60);
  
  
    SELECT * FROM bolumler;
    SELECT * FROM personeller;
  
  
  -- SATIS ve MUHASEBE bolumlerinde calisanlarin isimlerini ve 
  -- bolumlerini, once bolum sonra isim sirali olarak listeleyiniz  
  
  
  SELECT p.personel_isim, b.bolum_isim
  FROM bolumler b JOIN personeller p
  ON b.bolum_id = p.bolum_id
  WHERE b.bolum_isim IN ('SATIS', 'MUHASEBE')
  ORDER BY b.bolum_isim,p.personel_isim;
  
  
  /*
  SATIS, ISLETME ve DEPO bolumlerinde calisanlarin isimlerini ve
  bolumlerini isim sirali olarak listeleyiniz
  NOT: Calisani olmasa bile bolum ismi listelenmelidir.
  */
  
   SELECT p.personel_isim, b.bolum_isim
  FROM bolumler b LEFT JOIN personeller p
  ON b.bolum_id = p.bolum_id
  WHERE b.bolum_isim IN ('SATIS', 'ISLETME', 'DEPO');
  
  
  /*
  Calisan tum personelin isimlerini bolum isimlerini ve maaslarini
  bolum ters sirali ve maas sirali listalayiniz
  NOT: Bolum ismi olmasa bile calisanin ismi listelenmelidir.
*/


  SELECT p.personel_isim, b.bolum_isim, p.maas
  FROM bolumler b RIGHT JOIN personeller p
  ON b.bolum_id = p.bolum_id
  ORDER BY  b.bolum_isim DESC,p.maas ASC;
  
  
  
/*
  SATIS ve MUDURLUK bolumlerinde calisan personelin maaslari 2000 den
  buyuk olanlarin isimlerini, bolum isimlerini ve maaslarini bolume ve isme gore
  siralayarak listeleyiniz.
  
  */
  
  SELECT p.personel_isim, b.bolum_isim, p.maas
  FROM bolumler b RIGHT JOIN personeller p
  ON b.bolum_id = p.bolum_id
  WHERE b.bolum_isim IN('SATIS','MUDURLUK') AND p.maas>2000
  ORDER BY b.bolum_isim,p.personel_isim


  
  
  
  