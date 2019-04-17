result = uint64(0);

audio_info = audioinfo(input);

audio_sample = audioread('0.ogg');
sample0 = fft(audio_sample);
audio_sample = audioread('1.ogg');
sample1 = fft(audio_sample);
audio_sample = audioread('2.ogg'); 
sample2 = fft(audio_sample);
audio_sample = audioread('3.ogg');
sample3 = fft(audio_sample);
audio_sample = audioread('4.ogg');
sample4 = fft(audio_sample);
audio_sample = audioread('5.ogg');
sample5 = fft(audio_sample);
audio_sample = audioread('6.ogg');
sample6 = fft(audio_sample);
audio_sample = audioread('7.ogg');
sample7 = fft(audio_sample);
audio_sample = audioread('8.ogg');
sample8 = fft(audio_sample);
audio_sample = audioread('9.ogg');
sample9 = fft(audio_sample);

array = [sample0, sample1, sample2, sample3, sample4, sample5, sample6, sample7, sample8, sample9];

% extracting required information %
total_samples = audio_info.TotalSamples;
sample_rate = audio_info.SampleRate;
% computing length of duration%
winLen = total_samples/sample_rate;
ten = 10;

for i=0:winLen-1
    max = 0;
    position_index = 0;
    A = i*sample_rate + 1;
    B = (i+1)*sample_rate;
    [sound,f] = audioread(input,[A,B]);
    temp = 0;
    position_index = position_index -1;
    for j = 0:9
        temp_fft = fft(sound);
        % dot product%
        temp = dot(temp_fft,array(:,j+1));
        if temp > max
            position_index = j;
            max = temp;
        end
    end
    result = result*ten;
    result = result + position_index;
end
