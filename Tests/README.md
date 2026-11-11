# Tests – BMS Test Senaryoları

## Amaç
Bu klasör, 4S1P BMS modelinin işlevsel doğrulaması için kullanılan test senaryolarını ve simülasyon sonuçlarını içerir.

## Test Senaryoları

### 1. Hücre Seçim Testi
Dört hücrenin başlangıç SOC değerleri değiştirilerek en yüksek gerilime sahip hücrenin doğru seçilip seçilmediği kontrol edilir.

Beklenen sonuç: Yalnızca en yüksek gerilimli hücrenin dengeleme çıkışı 1 olur.

### 2. Aşırı Gerilim Koruması
Üst gerilim sınırının aşılması durumunda koruma bayrağının etkinleşmesi kontrol edilir.

Gerçek sınır: 4.2 V.

### 3. Düşük Gerilim Koruması
Alt gerilim sınırının aşılması durumunda koruma bayrağının etkinleşmesi kontrol edilir.

Gerçek sınır: 2.5 V.

### 4. Şarj Akımı Kesme Testi
Koruma etkinleştiğinde akım komutunun sıfırlanıp sıfırlanmadığı kontrol edilir.

Beklenen sonuç:
- Normal durumda: -1 A komutu.
- Koruma durumunda: 0 A komutu.

## Doğrulama Notu
Koruma testlerinde sınır değerleri geçici olarak değiştirilerek mantıksal işleyiş doğrulanmıştır. Bu testler, gerçek çalışma sınırlarının fiziksel batarya koşullarında doğrulandığı anlamına gelmez.

## Sonuçların Kaydedilmesi
Simülasyon Scope görüntüleri, ölçüm tabloları ve test kayıtları `Simulation_Results` klasöründe saklanacaktır.