% part 1
win = 64
stlen = 2
[y,fs] = audioread('chirp.wav')
output = q7_1(y,win,stlen);
subplot(1,2,1), imagesc(log(output(:,1:win)).');
 audio = audioread('chirp.wav')
subplot(1,2,2), spectrogram(audio,win,stlen);

 
 
 %part 2
 audio = audioread('message.wav')
 spectrogram(audio,2048,32,'yaxis');
 
 
 
 %part 3
 [signal,fs] = q7_3(20171100);
 player = audioplayer(signal,fs);
 play(player);
 output = q7_3(20171100)
 spectrogram(output,2048,32,'yaxis');