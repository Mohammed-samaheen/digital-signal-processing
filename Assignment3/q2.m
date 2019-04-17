im1 = imread('q2im1.tiff')
im2 = imread('q2im2.tiff')

F = fft2(im1)
H = fft2(im2)

part1 = ifft2(F*H)

Convfh = conv2(im1,im2);

centeredMatrix = Convfh(256-128:256+127,256-128:256+127);

ans2 = 0

for i=1:256
    for j  =1:256
        ans2 = ans2 + ((centeredMatrix(i,j) - part1(i,j))*(centeredMatrix(i,j) - part1(i,j)))/(256*256)
    end
end

%part 3

img1 = padarray(im1,[127,127],0,'pre')
img1 = padarray(img1,[128,128],0,'post')

img2 = padarray(im2,[127,127],0,'pre')
img2 = padarray(img2,[128,128],0,'post')

F2 = fft2(img1)
H2 = fft2(img2)

part3 = ifft2(F2*H2)

% Convfh2 = conv2(img1,img2);
Convfh2 = Convfh;

centeredMatrix2 = Convfh2(256-128:256+127,256-128:256+127);

ans3 = 0

for i=1:256
    for j  =1:256
        ans3 = ans3 + ((centeredMatrix2(i,j) - part3(i,j))*(centeredMatrix2(i,j) - part3(i,j)))/(256*256)
    end
end

