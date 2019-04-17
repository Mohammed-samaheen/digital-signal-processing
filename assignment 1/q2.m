
[y,fs] = audioread ('./maybe-next-time-huh.wav')
 y = y(:,1);
 fs = fs;
 sound(y,fs);
    
 fs = 24000;
 sound(y,fs);
 
 fs = 16000;
 sound(y,fs);
 
 fs = 8000;
 sound(y,fs);
 
 fs = 4000;
 sound(y,fs);
 
 r=audiorecorder(44100,16,1)
record(r) % speak
stop(r)
g=getaudiodata( r ,'double');
soundsc(g,44100)

[v1,imp1] = audioread('SMALL CHURCH E001 M2S.wav');
v1 = v1(:,1);
x = conv(g,v1);
sound(x,44100);

[v2,imp2] = audioread('STRANGEBOX-2.wav');
v2 = v2(:,1);
x = conv(g,v2);
sound(x,44100);

[v3, imp3] = audioread('MINI CAVES E001 M2S.wav');
v3 = v3(:,1);
x = conv(g,v3);
sound(x,44100);





