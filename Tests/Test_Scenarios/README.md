# BMS Test Senaryoları

Bu doküman, 4S1P BMS modelinin temel işlevlerini değerlendirmek amacıyla gerçekleştirilen testleri açıklar.

## Test 1 – Hücre Seçimi

**Amaç:** En yüksek gerilime sahip hücrenin doğru belirlenmesini kontrol etmek.

**Yöntem:** Hücrelerin başlangıç doluluk oranları değiştirilerek her hücrenin sırayla en yüksek gerilime sahip olması sağlanmıştır.

**Beklenen sonuç:** Yalnızca en yüksek gerilimli hücrenin dengeleme çıkışı 1 olmalıdır.

**Sonuç:** Dört hücre için de seçim mantığı doğrulanmıştır.

## Test 2 – Pasif Dengeleme Akımı

**Amaç:** Dengeleme direncinden geçen akımı kontrol etmek.

**Yöntem:** Birinci hücrenin dengeleme anahtarı etkinleştirilmiş ve direnç akımı ölçülmüştür.

**Sonuç:** Yaklaşık 0.2066 A dengeleme akımı gözlemlenmiştir.

## Test 3 – Aşırı Gerilim Koruması

**Amaç:** Üst gerilim sınırı aşıldığında koruma mantığının çalışmasını kontrol etmek.

**Yöntem:** Gerçek 4.2 V sınırı yerine geçici olarak 4.15 V eşik değeri kullanılarak mantıksal test gerçekleştirilmiştir.

**Sonuç:** Koruma bayrağı etkinleşmiş ve dengeleme çıkışları sıfırlanmıştır.

**Not:** Gerçek 4.2 V sınırında tetiklenme doğrulanmış değildir.

## Test 4 – Düşük Gerilim Koruması

**Amaç:** Alt gerilim sınırı ihlal edildiğinde koruma mantığını kontrol etmek.

**Yöntem:** Gerçek 2.5 V sınırı yerine geçici olarak 3.60 V eşik değeri kullanılmıştır.

**Sonuç:** Koruma bayrağı etkinleşmiş ve dengeleme çıkışları sıfırlanmıştır.

**Not:** Gerçek 2.5 V sınırında tetiklenme doğrulanmış değildir.

## Test 5 – Şarj Akımı Komutu

**Amaç:** Koruma durumunda şarj akımı komutunun sıfırlanmasını kontrol etmek.

**Beklenen sonuç:**
- Normal durumda: -1 A komutu.
- Koruma durumunda: 0 A komutu.

**Sonuç:** Her iki çalışma durumu da doğrulanmıştır.

## Genel Değerlendirme

Temel hücre seçimi, pasif dengeleme, koruma mantığı ve akım komutu işlevleri simülasyon