
% part 3

sigma = 2;
n = 8;
out = gaussFilter(n,sigma);
I = imread('Cameraman.tif');
pI = imfilter(I,out,'replicate');
subplot(3,3,1), imshow(pI);
title("gaussian filter 2 - 8")
pI = medianFilter('Cameraman.tif',4);
subplot(3,3,2), imshow(pI);
title("median filter 4")

sigma = 4;
n = 16;
out = gaussFilter(n,sigma);
I = imread('Cameraman.tif');
pI = imfilter(I,out,'replicate');
subplot(3,3,3), imshow(pI);
title("gaussian filter 4 - 16")
pI = medianFilter('Cameraman.tif',5);
subplot(3,3,4), imshow(pI);
title("median filter 5")

sigma = 4;
n = 32;
out = gaussFilter(n,sigma);
I = imread('Cameraman.tif');
pI = imfilter(I,out,'replicate');
subplot(3,3,5), imshow(pI);
title("gaussian filter 4 - 32")
pI = medianFilter('Cameraman.tif',4);
subplot(3,3,6), imshow(pI);
title("median filter 6")


%part 4


I = imread('inp1.png')
 subplot(1,2,1), imshow(I)
out = medianFilter('inp1.png', 5)
 subplot(1,2,2), imshow(out)

 
 % part 5
 
I = imread('inp2.png')
subplot(2,2,1),imshow(I);
title("original");
freq_d = fft2(I);
shifted_fqd = fftshift(freq_d);

subplot(2,2,2), imagesc(mat2gray(abs(shifted_fqd)));
shifted_fqd(214:223,119:121)=0;
shifted_fqd(97:106,119:121)=0;
subplot(2,2,3), imshow(shifted_fqd);

Out = fftshift(shifted_fqd);
Out = ifft2(Out);
subplot(2,2,3), imshow(mat2gray(abs(Out)));
title("noise filtered")
 
 


