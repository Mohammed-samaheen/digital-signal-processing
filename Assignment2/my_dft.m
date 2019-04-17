function output = my_dft(i)      
    len = length(i);
    w = 2*pi*linspace(0,1-1/len,len);
    n = 1:len;
    output = exp(-1j*w'*(n-1))*i';
end