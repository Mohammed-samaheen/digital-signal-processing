 [y,fs] = audioread ('./maybe-next-time-huh.wav')
 y = y(:,1);
 fs = fs;
    dt = 1/fs;
    t = 0:dt:(length(y)*dt)-dt;
    plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
    
 fs1 = fs*2;
 dt = 1/fs1;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y); xlabel('Seconds'); ylabel('Amplitude');

fs2 = fs/2;
dt = 1/fs2;
t = 0:dt:(length(y)*dt)-dt;
plot(t,y); xlabel('Seconds'); ylabel('Amplitude');

