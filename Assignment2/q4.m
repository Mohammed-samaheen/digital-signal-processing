[y,fs] = audioread('signal_4.wav');
n = 64;
sigma = 100;

y3 = smoothdata(y,"gaussian");

% sound(y1,fs);
% sound(y,fs);
subplot(1,2,1) , plot(y)
title("ORIGINAL");

subplot(1,2,2) , plot(y3)
title("gaussian");



