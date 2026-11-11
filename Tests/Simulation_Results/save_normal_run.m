% 4S1P BMS - Normal Simulasyon Sonucunu Kaydetme

% Proje ana klasorunu bul
scriptPath = mfilename('fullpath');
projectRoot = fileparts(fileparts(fileparts(scriptPath)));

% Model dosyasinin tam yolunu belirle
modelFile = fullfile(projectRoot, 'Integration', 'main_bms.slx');

% Modeli yukle
load_system(modelFile);

% Simulasyonu calistir
simOut = sim('main_bms');

% Sonucu kontrol et ve kaydet
if isempty(simOut.ErrorMessage)

    resultFile = fullfile(projectRoot, ...
        'Tests', 'Simulation_Results', 'normal_run.mat');

    save(resultFile, 'simOut');

    fprintf('Simulasyon basarili!\n');
    fprintf('Zaman ornegi: %d\n', length(simOut.tout));
    fprintf('Son zaman: %.2f saniye\n', simOut.tout(end));

else
    fprintf('Simulasyon hatasi: %s\n', simOut.ErrorMessage);
end