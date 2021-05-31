%Sinyalin yüklenmesi ve çizdirilmesi
sinyal = load("100m.mat").val
plot(sinyal)
figure(1)
subplot(3,1,1)
plot(sinyal)

%Alçak geçigen filtrenin tasarımı
fs = 515;
filterOrder = 10; %Filtre dizi sabiti
cutOffFreq = 18;  
[b,a] = butter(filterOrder, cutOffFreq/(fs/2),'low'); %Parametreler yerine kondu.
%Filtrenin uygulanması ve çizdirilmesi
ECG_highpass = filter(b,a,sinyal);
figure(1)
subplot(3,1,2)
plot(ECG_highpass)
title('Butterworth filtre uygulanmış hali');


fs = 515;
filterOrder = 10;
cutOffFreq = 4;
[b,a]=butter(filterOrder,cutOffFreq/(fs/2),'high');

[h,w]=freqz(b,a);
figure(2);
subplot(2,1,2);
plot(w/pi*fs/2,abs(h),'-');
title("High-Pass Magnitude responce");
grid on

EKG_filtered = filter(b,a,ECG_highpass);
figure(1);
subplot(3,1,3);
plot(EKG_filtered);
title("şekil-2");