# 4S1P Battery Management System (BMS)

## Proje Hakkında

Bu proje, seri bağlı dört hücreden oluşan 4S1P lityum iyon batarya paketi için temel bir Batarya Yönetim Sistemi (BMS) prototipinin MATLAB/Simulink ortamında geliştirilmesini kapsamaktadır.

Sistem; hücre gerilimlerinin izlenmesi, pasif hücre dengelemesi ve aşırı/düşük gerilim koruma mantığını içermektedir.

## Temel Özellikler

- Dört hücreli seri batarya modeli.
- Hücre gerilimlerinin izlenmesi.
- Stateflow tabanlı dengeleme kontrolü.
- 20 Ohm dirençler üzerinden pasif dengeleme.
- Aşırı gerilim koruma mantığı (4.2 V).
- Düşük gerilim koruma mantığı (2.5 V).
- Koruma durumunda şarj akımı komutunun sıfırlanması.
- Simulink Scope ve Display üzerinden sonuçların izlenmesi.

## Kullanılan Teknolojiler

- MATLAB R2026b
- Simulink
- Simscape
- Simscape Electrical
- Stateflow

## Proje Klasör Yapısı

```text
4S1P_BMS_Projesi/
├── Controller/
│   ├── Algorithms/
│   ├── Stateflow/
│   └── README.md
├── Plant/
│   ├── Parameters/
│   │   └── init_params.m
│   ├── Simscape/
│   │   └── battery_plant_backup.slx
│   └── README.md
├── Integration/
│   ├── Interfaces/
│   ├── main_bms.slx
│   └── README.md
├── Tests/
│   ├── Simulation_Results/
│   ├── Test_Scenarios/
│   └── README.md
├── Documentation/
│   ├── Mathematical_Model/
│   ├── System_Architecture/
│   └── Technical_Report/
├── .gitignore
└── README.md
```

## Mevcut Durum

Dört hücreli batarya modeli, pasif dengeleme devresi, Stateflow kontrolcüsü ve gerilim koruma mantığı bütünleşik Simulink modeli içerisinde oluşturulmuştur.

Ana model `Integration/main_bms.slx` dosyasında bulunmaktadır ve simülasyon hatasız tamamlanmıştır.

## Sınırlamalar

Bu çalışma simülasyon amaçlı bir prototiptir. Gerçek araç üzerinde kullanım, otomotiv güvenlik standartlarına uygunluk veya üretim ortamında güvenilirlik iddiası taşımamaktadır.