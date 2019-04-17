image = imread('LAKE.TIF')
im1 = image(420:427,45:52);
im2 = image(427:434,298:305);
im3 = image(30:37, 230:237);

matrix = [16 11 10 16 24 40 51 61 ; 12 12 14 19 26 58 60 55 ; 14 13 16 24 40 57 69 56 ; 14 17 22 29 51 87 80 62 ; 
         18 22 37 56 68 109 103 77 ; 24 35 55 64 81 104 113 92 ; 49 64 78 87 103 121 120 101 ; 72 92 95 98 112 100 103 99];
 
% dealing with image 1
dct1 = myDCT(im1,dctmtx(8));
quant1 = myDCT_quantization(dct1,matrix,2);
dequant1 = myDCT_dequantization(quant1,matrix,2);
idct1 = myIDCT(dequant1, dctmtx(8));

subplot(2,2,1)
imshow(mat2gray(im1));
title('Original');

subplot(2,2,2)
imshow(mat2gray(dct1));
title('DCT')

subplot(2,2,3)
imshow(mat2gray(quant1));
title('Quantized')

subplot(2,2,4)
imshow(mat2gray(idct1));
title('Reconstructed');


% dealing with image 2
im1 = im2
dct1 = myDCT(im1,dctmtx(8));
quant1 = myDCT_quantization(dct1,matrix,2);
dequant1 = myDCT_dequantization(quant1,matrix,2);
idct1 = myIDCT(dequant1, dctmtx(8));

subplot(2,2,1)
imshow(mat2gray(im1));
title('Original');

subplot(2,2,2)
imshow(mat2gray(dct1));
title('DCT')

subplot(2,2,3)
imshow(mat2gray(quant1));
title('Quantized')

subplot(2,2,4)
imshow(mat2gray(idct1));
title('Reconstructed');

% dealing with image 3
im1 = im3
dct1 = myDCT(im1,dctmtx(8));
quant1 = myDCT_quantization(dct1,matrix,2);
dequant1 = myDCT_dequantization(quant1,matrix,2);
idct1 = myIDCT(dequant1, dctmtx(8));

subplot(2,2,1)
imshow(mat2gray(im1));
title('Original');

subplot(2,2,2)
imshow(mat2gray(dct1));
title('DCT')

subplot(2,2,3)
imshow(mat2gray(quant1));
title('Quantized')

subplot(2,2,4)
imshow(mat2gray(idct1));
title('Reconstructed');