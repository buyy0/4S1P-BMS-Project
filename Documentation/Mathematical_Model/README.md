# 4S1P BMS – Matematiksel Model

## 1. Hücre Gerilimlerinin Karşılaştırılması

Dört hücrenin ölçülen gerilimleri sırasıyla aşağıdaki şekilde tanımlanır:

- V1: Birinci hücrenin gerilimi
- V2: İkinci hücrenin gerilimi
- V3: Üçüncü hücrenin gerilimi
- V4: Dördüncü hücrenin gerilimi

En yüksek ve en düşük hücre gerilimleri:

Vmax = max(V1, V2, V3, V4)

Vmin = min(V1, V2, V3, V4)

Hücreler arasındaki gerilim farkı:

ΔV = Vmax - Vmin

## 2. Pasif Dengeleme Mantığı

Hücreler arasındaki gerilim farkı 0.02 V değerini aştığında en yüksek gerilime sahip hücrenin dengeleme anahtarı etkinleştirilir.

Dengeleme koşulu:

ΔV > 0.02 V

Dengeleme devresindeki direnç 20 Ohm olarak belirlenmiştir. Anahtar etkin olduğunda direnç üzerinden geçen akım yaklaşık olarak Ohm Kanunu ile ifade edilir:

I_balance = V_cell / R_balance

Burada:
- I_balance: Dengeleme akımı
- V_cell: Dengeleme yapılan hücrenin gerilimi
- R_balance: Dengeleme direnci (20 Ohm)

## 3. Gerilim Koruma Mantığı

Üst ve alt gerilim sınırları sırasıyla 4.2 V ve 2.5 V olarak tanımlanmıştır.

Koruma koşulu:

Vmax ≥ 4.2 V veya Vmin ≤ 2.5 V

Koşullardan herhangi biri gerçekleştiğinde Protection_Flag = 1 olur. Bu durumda dengeleme çıkışları pasif hâle getirilir ve şarj akımı komutu sıfırlanır.

## 4. Kontrol Çıkışları

Kontrolcü dört dengeleme çıkışı üretir:

- S1: Birinci hücrenin dengeleme anahtarı
- S2: İkinci hücrenin dengeleme anahtarı
- S3: Üçüncü hücrenin dengeleme anahtarı
- S4: Dördüncü hücrenin dengeleme anahtarı

Normal