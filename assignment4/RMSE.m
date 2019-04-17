function output = RMSE(im1,im2)
    im1 = double(im1)
    im2 = double(im2)
    [n,m] = size(im1)
    temp = im1-im2;
    temp = temp.*temp;
    noe = n*m;
    total_square_sum = sum(temp(:));
    output = sqrt(total_square_sum/noe);
end
    
