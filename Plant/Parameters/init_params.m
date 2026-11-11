%% 4S1P BMS - Batarya Parametreleri

% Batarya özellikleri
cell_capacity = 2.0;       % Ah
cell_Vnom = 3.6;           % V

% Başlangıç doluluk oranları
soc_init_1 = 0.95;
soc_init_2 = 0.90;
soc_init_3 = 0.85;
soc_init_4 = 0.80;

% Dengeleme direnci
R_balance = 20;            % Ohm

% Hücre gerilim sınırları
V_max_limit = 4.2;         % V
V_min_limit = 2.5;         % V

% Dengeleme eşik değeri
V_balance_threshold = 0.02; % V

% Şarj akımı
I_charge = 1;              % A