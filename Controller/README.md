# Controller – BMS Control System

## Amaç
Bu klasör, 4S1P batarya paketinin dengeleme ve gerilim koruma işlemlerini yöneten kontrol algoritmalarını içerir.

## Kontrol Fonksiyonları

- Dört hücrenin gerilimlerinin karşılaştırılması.
- Gerilimi en yüksek hücrenin belirlenmesi.
- 20 Ohm direnç üzerinden pasif dengelemenin etkinleştirilmesi.
- 4.2 V aşırı gerilim sınırının izlenmesi.
- 2.5 V düşük gerilim sınırının izlenmesi.
- Koruma durumunda şarj akımı komutunun sıfırlanması.

## Kullanılan Teknoloji

- MATLAB Stateflow
- Simulink
- Simscape Electrical

## Kontrol Mantığı

Kontrolcü, hücre gerilimlerini sürekli değerlendirir. Hücreler arasındaki gerilim farkı 0.02 V değerini aştığında en yüksek gerilime sahip hücrenin dengeleme anahtarı etkinleştirilir.

Herhangi bir hücrenin gerilimi belirlenen üst veya alt sınırı ihlal ederse koruma bayrağı etkinleştirilir ve şarj akımı komutu sıfırlanır.