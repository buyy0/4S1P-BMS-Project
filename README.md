# 4S1P Battery Management System (BMS)

## Proje Hakkında

Bu proje, seri bağlı dört hücreden oluşan 4S1P lityum iyon batarya paketi için temel bir Batarya Yönetim Sistemi (BMS) prototipinin MATLAB/Simulink ve Simscape ortamında geliştirilmesini kapsamaktadır.

Sistem; hücre gerilimlerinin izlenmesi, pasif hücre dengelemesi ve aşırı/düşük gerilim koruma mantığını içermektedir.

## Temel Özellikler

- Dört hücreli seri batarya modeli.
- Hücre gerilimlerinin ve SOC değerlerinin izlenmesi.
- Stateflow tabanlı dengeleme kontrolü.
- 20 Ω dirençler üzerinden pasif hücre dengelemesi.
- Hücreler arasındaki gerilim farkı 0.02 V değerini aştığında en yüksek gerilimli hücrenin dengelenmesi.
- Aşırı gerilim koruma mantığı (4.2 V).
- Düşük gerilim koruma mantığı (2.5 V).
- Koruma durumunda şarj akımı komutunun sıfırlanması.
- Simulink Display ve Scope üzerinden sonuçların izlenmesi.

## Kullanılan Teknolojiler

- MATLAB R2026b Update 1
- Simulink
- Simscape
- Simscape Electrical
- Stateflow
- Git / GitHub

## Proje Klasör Yapısı

```text
4S1P_BMS_Projesi/
├── Controller/
│   └── Stateflow/
│       └── bms_controller.slx
├── Integration/
│   └── main_bms.slx
├── Plant/
│   └── Simscape/
│       ├── battery_plant.slx
│       └── battery_plant_backup.slx
├── Results/
│   ├── Screenshots/
│   └── test_sonuclari.txt
├── .gitignore
└── README.md
## Sistem Mimarisi ve Arayüzler

### 1. Battery Plant

Dosya: `Plant/Simscape/battery_plant.slx`

Simscape ortamında oluşturulan fiziksel batarya ve pasif dengeleme modelidir.

Girişler:
- `Switch1`, `Switch2`, `Switch3`, `Switch4`: Hücre dengeleme anahtarlarının kontrol sinyalleri.
- `Charge_Enable`: Şarj akımı komutunun etkinleştirilmesi.

Çıkışlar:
- `V1`, `V2`, `V3`, `V4`: Hücre gerilimleri.
- `SOC1`, `SOC2`, `SOC3`, `SOC4`: Hücrelerin doluluk oranları.

### 2. Controller

Dosya: `Controller/Stateflow/bms_controller.slx`

Hücre gerilimlerini değerlendirerek dengeleme ve koruma kararlarını oluşturan kontrol bileşenidir.

Girişler:
- `V1`, `V2`, `V3`, `V4`: Hücre gerilimleri.

Çıkışlar:
- `S1`, `S2`, `S3`, `S4`: Dengeleme anahtarlarının kontrol sinyalleri.
- `Protection_Flag`: Koruma durumunu gösteren sinyal.

Kontrol mantığı:
- Hücre gerilimleri arasındaki fark 0.02 V değerinden büyükse en yüksek gerilimli hücre seçilir.
- Herhangi bir hücrenin gerilimi 4.2 V veya üzerine çıkarsa aşırı gerilim koruması etkinleşir.
- Herhangi bir hücrenin gerilimi 2.5 V veya altına düşerse düşük gerilim koruması etkinleşir.
- Koruma etkinleştiğinde dengeleme çıkışları sıfırlanır ve şarj akımı komutu durdurulur.

### 3. Integration

Dosya: `Integration/main_bms.slx`

Battery Plant ve Controller bileşenlerini bir araya getiren ana Simulink modelidir.

Ana model üzerinden batarya davranışı, hücre gerilimleri, dengeleme kararları ve koruma sinyalleri birlikte gözlemlenebilir.

## Testler ve Sonuçlar

Gerçekleştirilen testler:

1. Normal çalışma testi.
2. 300 saniyelik pasif dengeleme testi.
3. Farklı hücre gerilimleriyle hücre seçimi testi.
4. Aşırı gerilim koruma mantığı testi.
5. Düşük gerilim koruma mantığı testi.
6. Dört dengeleme kolunun ayrı ayrı çalışma testi.

300 saniyelik dengeleme testinde hücreler arasındaki maksimum gerilim farkı yaklaşık 0.151 V değerinden 0.137 V değerine düşmüştür.

Koruma mantığı testlerinde eşik değerleri geçici olarak değiştirilerek kontrol davranışı doğrulanmış, ardından nominal eşikler olan 4.2 V ve 2.5 V değerleri geri yüklenmiştir.

Ayrıntılı sonuçlar ve ekran görüntüleri `Results/` klasöründe bulunmaktadır.

## Modelin Çalıştırılması

1. Proje klasörünü MATLAB çalışma dizini olarak açın.
2. `Plant/Simscape` klasörünün MATLAB arama yolunda olduğundan emin olun.
3. `Integration/main_bms.slx` modelini açın.
4. Simülasyonu çalıştırın.
5. Hücre gerilimlerini, SOC değerlerini, dengeleme sinyallerini ve koruma durumunu Display/Scope bloklarından izleyin.

## Sınırlamalar

Bu çalışma simülasyon amaçlı bir prototiptir. Gerçek araç üzerinde kullanım, otomotiv güvenlik standartlarına uygunluk veya üretim ortamında güvenilirlik iddiası taşımamaktadır.

Simülasyon sonuçları fiziksel donanım üzerinde doğrulanmış sonuçlar olarak değerlendirilmemelidir.