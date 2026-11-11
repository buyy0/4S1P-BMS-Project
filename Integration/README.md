# Integration – BMS Ana Modeli

## Amaç
Bu klasör, batarya modeli ile BMS kontrolcüsünün birlikte çalıştığı ana Simulink modelini içerir.

## Dosyalar

- `main_bms.slx`: Dört hücreli batarya paketi, pasif dengeleme devresi, gerilim ve akım sensörleri, Stateflow kontrolcüsü ve koruma mantığının bulunduğu ana model.
- `Interfaces/`: Alt sistemler arasındaki bağlantı ve arayüz dokümantasyonu için ayrılmış klasör.

## Sistem İşleyişi

1. Batarya hücrelerinin gerilimleri ölçülür.
2. Ölçülen gerilimler kontrolcüye aktarılır.
3. Kontrolcü dengeleme yapılacak hücreyi belirler.
4. Gerilim sınırları ihlal edildiğinde koruma bayrağı etkinleşir.
5. Koruma aktif olduğunda şarj akımı komutu sıfırlanır.

## Simülasyon

Ana model MATLAB/Simulink ortamında çalıştırılır. Sonuçlar Scope ve Display blokları üzerinden izlenir.