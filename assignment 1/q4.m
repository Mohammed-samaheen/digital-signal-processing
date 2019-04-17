

%bilinear

im = imread('img1.jpg');
out = bilinearInterpolation(im, 2);
figure;
imshow(out);
out = bilinearInterpolation(im, 5);
figure;
imshow(out);

%nearestneighbour

img_nn = nearestNeighbourInterpolation('img1.jpg',2);
figure;
imshow(img_nn);
img_nn = nearestNeighbourInterpolation('img1.jpg',5);
figure;
imshow(img_nn);

%bilinear

im = imread('sample_inp.png');
out = bilinearInterpolation(im, 2);
figure;
imshow(out);
out = bilinearInterpolation(im, 5);
figure;
imshow(out);

%nearestneighbour

img_nn = nearestNeighbourInterpolation('sample_inp.png',2);
figure;
imshow(img_nn);
img_nn = nearestNeighbourInterpolation('sample_inp.png',5);
figure;
imshow(img_nn);


%bilinear

im = imread('sample_out.png');
out = bilinearInterpolation(im, 2);
figure;
imshow(out);
out = bilinearInterpolation(im, 5);
figure;
imshow(out);

%nearestneighbour

img_nn = nearestNeighbourInterpolation('sample_out.png',2);
figure;
imshow(img_nn);
img_nn = nearestNeighbourInterpolation('sample_out.png',5);
figure;
imshow(img_nn);




