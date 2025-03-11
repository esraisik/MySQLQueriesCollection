

-- bu bir yorum satiridir

/*
Eger birden fazla satiri
 yorum yapmak istersek
*/

/*
Database'de islem yapmak,
Java ile islem yapmaktan farklıdır.
JAva Run Time program oldugundan, caliama bittiginde her sey sifirlanir ve en bastaki duruma döner
ANNNNCAAAAAKKK database'de yapilan her islem KALİCİ olacaktir

Kismen geriye almak mumkun olsa da,
her islemi geriye almak MUMKUN DEGİLDİR

BU ACIDAN database ile yapacagimşz her islemde 2 kere dusunmekte fayda var
*/

-- yeni bir schema olusturmak icin
CREATE SCHEMA Team148;

/*
Database ve Quey sayfasi farklı seylerdir.
Daatabaase'i Local olarak olusturduk,
Ancak ister Local isterse Uzak database olsun, database'de yapilan islemler KALİCİDİR

Database'de islem yapabilmek icin olusturdugumuz Query dosyalari ise
bizim not aldigimiz sayfalar gibidir,
biz kaydetmedikce kalici olarak kaydedilmez.
*/

/*
SQL ide sorgu yapmak Java kodlarini calistirmaaktan farklidir
Java'da bir class veya method calistirildiginda
o class veya method'taki tum kodlar calisir.

ANNCCAKKK
Database sorgularini calistirmak icin iiki alternatif vardir
1- Query sayfasindaki belirli satir(lar)i calistirmak icin
    o satir(lar)i secip yukaridaki execute (simsek) butonuna basilir.
    
    NOT: eger secim olmazsa tum sayfa calistirilir
    BUNU KESİNLİKLE TAVSİYE ETMİYORUZ
    cunku ayni kayıtlari tekrar tekrar database'e kaydedebilir
    
2- uzerinde (I) olan execute (simsek) tusuna basarsaniz
	en yukaridan Cursor'un bulundugu satira kadar
    tum sorgulari calistirir
*/
-- Bir Query sayfasinin hangi Schema ile calisacagini belirlemek için use komutu kullanilir
-- Query sayfası her acildiginda bu kodun 1 kere calistirilmasi gerekir
use Team148;









