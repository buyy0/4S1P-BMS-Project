# Simülasyon Sonuçları

Bu klasör, 4S1P BMS modelinin simülasyon çıktısını ve sonuçları yeniden oluşturmak için kullanılan MATLAB betiğini içerir.

## Dosyalar

- `normal_run.mat`: Normal çalışma koşullarında gerçekleştirilen simülasyonun MATLAB sonuç verisi.
- `save_normal_run.m`: Ana modeli çalıştırarak simülasyon sonucunu MAT dosyasına kaydeden betik.

## Normal Çalışma Testi

- Model: `Integration/main_bms.slx`
- Simülasyon süresi: 10 saniye
- Zaman örneği sayısı: 52
- Simülasyon durumu: Başarılı

## Tekrar Çalıştırma

MATLAB Command Window üzerinden proje ana klasöründeyken:

`run('Tests/Simulation_Results/save_normal_run.m')`

komutu çalıştırılabilir.

## Not

Bu dosya normal çalışma koşullarındaki simülasyon çıktısını içerir. Koruma testleri için kullanılan geçici eşik değişiklikleri ayrı test sonuçları olarak kaydedilmemiştir.