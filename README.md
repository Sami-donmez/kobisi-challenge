Merhaba,

Günden güne büyüyen teknoloji dünyasında yolumuz seninlekesiştiği için oldukça
heyecanlıyız.

Kobisi olarak çalışma yöntemlerimizi, hedeflerimiziumarız doğru bir şekilde anlatabilmişizdir.
Hayallerimizi gerçekleştirirken, senin de bizimlebirlikte olmanı, beraber çalışmayı çok isteriz.

Proje için;
Başlıkların hepsini veya;
● Yalnızca API
● Yalnızca Worker
● API + Callback
● Worker + Callback
● API + Worker

Yukarıda belirtmiş olduğumuz kısımlardan seçebilirsin.
Herhangi bir süre kısıtlaması yoktur.
Tamamlanma süreleri bizim için ekstra bir kriter olacaktır.

**Tanım**

E-Ticaret altyapısı sunan bir platform için mağaza,paket ve ödeme kayıtları API
üzerinden kayıt yapılacaktır. Bu kayıtlar üzerindenaylık veya yıllık periyotlara göre paket
tanımlamaları olacaktır. Bu paketler mağazanın sistemekayıt olduğu tarih ile ilişkilendirilerek
paket periyoduna göre ödemeleri Worker ile çekilecektir.Mağazada herhangi bir değişiklik
olması durumunda belirlenen Endpoint’e Callback iledönüş sağlanacaktır.

Tablolar: Companies, Packages, Company_packages, Company_payments
Tablolar oluşturulduktan sonra Dummy (laravel seed/faker)veriler ile doldurmanız
beklenmektedir.

Kolay gelsin.


## API (MEDIUM)

**Company Register**
Bir kullanıcı sisteme kayıt olmak istediğinde Requestdatası olarak “site_url, name,
lastname, company_name, email, password” gönderecektir.Response olarak status, token
ve company_id dönüşü yapmanız beklenmektedir.

**Company Package**
Company belirlenen paketler doğrultusunda aylık veyayıllık yenilenecek şekilde
paket tanımlaması yapmanız beklenmektedir. Companypaket tanımlama işleminde request
olarak company_id, package_id gönderilecektir. Responseolarak status,start_date,
end_date, package bilgileri dönmenizi bekliyoruz.

**Check Company Package**
Gerekli görüldüğünde token üzerinden company ve packagebilgileri talep edileceği
bir endpoint oluşturmanız beklenmektedir.

## WORKER (MEDIUM)

Cron’dan ya da supervisord gibi çeşitli server sidetetikleyiciler vasıtası ile paket günü
biten müşterilerin hesaplarından para çekimi yapılmakistenmektedir. Random bir hash
oluşturarak son basamağı tek ise hesaptan çekildi,çift ise çekilemedi, şeklinde yapabilirsiniz.

Çekilemez ise 1 gün ara ile tekrar denenecek şekildebir kuyruk yapısı kullanmanız
gerekiyor. Üçüncü seferde yapılamaz ise company pasifdurumuna almanız gerekiyor.
Company Payments’ a denemeleri kayıt etmeniz beklenmektedir.

Worker işlemi için Queue kullanmanız beklenmektedir.

## CALLBACK (MEDIUM)

Api veya Worker kısmında herhangi bir değişiklik olmasıdurumunda belirlenen
endpoint’e istek atması beklenmektedir.

**RAPOR (İsteğe Bağlı)**
Worker çalıştıktan sonra başarılı işlem, başarısızişlem, başarılı işlem tutarı, başarısız
işlem tutarı ve günlere göre listeleme yapmalısınız.

## TEKNİK KOŞULLAR

```
● PHP 7.3 ve üzeri desteklemelidir.
● Tercihen Laravel 7 veya üstü kullanılmalıdır.
● Her company’nin bir adet paket tanımlaması olmalıdır.
● DB şeması, sql dosyası olarak verilmelidir.
```

● DB tablolarının özellikle company tablosunun milyonlarca kayıt altında çalışması
beklenmektedir.
● Yazılı beklentiler dışında geliştirilmiş dikkatçekmek istediğiniz özellikleri README
dosyasında kısa başlıklar ile belirtebilirsiniz.
● Proje github üzerinden bizimle paylaşılmalıdır.

Task ile ilgili herhangi bir sorun olduğunda bizimleiletişime geçmekten çekinmeyin lütfen.

Teşekkür ederiz.
Kolay gelsin.


