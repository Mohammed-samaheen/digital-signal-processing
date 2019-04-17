function output = one_d_fourier(i)
    len = length(i);
    if len == 1
        output = i;
    else
        odd = i(1:2:len);
        even = i(2:2:len);
        
        fodd = one_d_fourier(odd);
        feven = one_d_fourier(even);
        ex = exp(-1i*2*pi*((0:len/2-1)')/len);
        output_left = feven + ex.*fodd;
        output_right = feven - ex.*fodd;
        output = [output_left;output_right];
    end        
end