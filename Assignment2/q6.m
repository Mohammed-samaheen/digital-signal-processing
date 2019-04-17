y = imread('Cameraman.tif');

NFFT = length(y);
Y = fft(y,NFFT);
% F = ((0:1/NFFT:1-1/NFFT)*Fs).';

i1 = fft(y);
i2 = fft(i1);

i3 = fft(i2);
i4 = fft(i3);

subplot(2,2,1); imagesc(abs(y)), colormap gray
subplot(2,2,2); imagesc(abs(i1)), colormap gray
subplot(2,2,3); imagesc(abs(i2)), colormap gray
subplot(2,2,4); imagesc(abs(i4)), colormap gray