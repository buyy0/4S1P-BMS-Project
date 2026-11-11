# 4S1P BMS – Sistem Mimarisi

## 1. Genel Mimari

Sistem, seri bağlı dört lityum iyon hücreden oluşan bir batarya paketi ve bu paketi izleyen BMS kontrol mantığından meydana gelmektedir.

Model MATLAB/Simulink, Simscape Electrical ve Stateflow kullanılarak geliştirilmiştir.

## 2. Sistem Bileşenleri

### Batarya Paketi
- Dört adet Battery (Table-Based) bloğu seri bağlanmıştır.
- Hücre kapasitesi 2 Ah olarak belirlenmiştir.
- Her hücrenin gerilimi ayrı sensörlerle ölçülmektedir.

### Pasif Dengeleme Devresi
- Her hücre için bir anahtar ve 20 Ohm direnç kullanılmıştır.
- Kontrolcü, gerilimi en yüksek hücreyi belirleyerek ilgili dengeleme anahtarını etkinleştirir.

### BMS Kontrolcüsü
- Stateflow tabanlı kontrol mantığı kullanılmıştır.
- Hücre gerilimleri karşılaştırılır.
- Hücreler arasındaki gerilim farkı 0.02 V değerini aşarsa dengeleme başlatılır.

### Koruma Sistemi
- Üst gerilim sınırı: 4.2 V.
- Alt gerilim sınırı: 2.5 V.
- Sınırlar ihlal edildiğinde Protection_Flag etkinleşir.
- Koruma durumunda şarj akımı komutu sıfırlanır.

## 3. Veri Akışı

1. Hücre gerilimleri sensörlerle ölçülür.
2. Ölçüm değerleri Simulink sinyallerine dönüştürülür.
3. Stateflow kontrolcüsüne aktarılır.
4. Kontrolcü dengeleme ve koruma kararlarını üretir.
5. Anahtarlar ve şarj akımı komutu kontrol edilir.

## 4. Model Sınırları

Bu mimari simülasyon ortamında geliştirilmiş bir prototiptir. Gerçek batarya paketi üzerinde güvenlik ve performans doğrulaması yapılmış bir ürün değildir.