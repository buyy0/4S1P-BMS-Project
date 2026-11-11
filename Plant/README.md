# Plant – Batarya Modeli

## Amaç
Bu klasör, 4S1P lityum iyon batarya paketinin fiziksel modeline ve simülasyon parametrelerine ilişkin dosyaları içerir.

## Dosyalar

- `Simscape/battery_plant_backup.slx`: Ana BMS modelinin yedek kopyasıdır. Bağımsız bir batarya alt sistemi değildir.
- `Parameters/init_params.m`: Batarya kapasitesi, başlangıç doluluk oranları, dengeleme direnci ve gerilim sınırlarına ilişkin parametre tanımlarını içerir.

## Batarya Parametreleri

- Hücre sayısı: 4
- Bağlantı: 4S1P
- Hücre kapasitesi: 2 Ah
- Dengeleme direnci: 20 Ohm
- Üst gerilim sınırı: 4.2 V
- Alt gerilim sınırı: 2.5 V
- Dengeleme eşiği: 0.02 V

## Not
Bağımsız batarya alt modeli henüz oluşturulmamıştır. Mevcut çalışan bütünleşik model `Integration/main_bms.slx` dosyasındadır.