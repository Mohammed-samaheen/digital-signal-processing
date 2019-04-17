img = imread('Cameraman.tif');
image = imresize(img,4);
rows = zeros(size(image));
two_d_fft = zeros(size(image));
image=double(image);
tic
for i=1:size(image,1)
    rows(i,:) = one_d_fourier(image(i,:));
end
for i=1:size(image,2)
    two_d_fft(:,i) = one_d_fourier(rows(:,i).');
end
toc

% C = fftshift(two_d_fft);
C = two_d_fft;
figure, imagesc(log(abs(C)+1)), colormap gray;
title('Using Recursive FFT function');

tic
D = fftshift(fft2(image));
figure, imagesc(log(abs(D)+1)), colormap gray;
title('Using Inbuilt FFT function');
toc


rows = zeros(size(image));
dft = zeros(size(image));
image=double(image);
tic
for i=1:size(image,1)
    rows(i,:) = my_dft(image(i,:));
end
for i=1:size(image,2)
    dft(:,i) = my_dft(rows(:,i).');
end
toc

figure, imagesc(log(abs(dft)+1)), colormap gray;
title('Using DFT function');




