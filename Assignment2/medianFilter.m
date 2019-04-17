function [out] = medianFilter(img, ksize)
    I = imread(img);
    n = ksize - 1;
    inp = padarray(I,[n n],0,'pre');
    B = im2col(inp,[ksize ksize])
    M = median(B)
    out = col2im(M,[1 1],size(I))
end