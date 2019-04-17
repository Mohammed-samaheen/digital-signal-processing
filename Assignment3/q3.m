    image = imread('q3img1.jpg')
    f1 = fft2(image)
    f1 = fftshift(f1)
    N = length(image);
    f = [-N/2:N/2-1]/N;
    subplot(2,2,1),
    plot(f,abs(f1))

    image2 = padarray(image,[32 32],0,'both')
    f1 = fft2(image2)
    f1 = fftshift(f1)
    N = length(image2);
    f = [-N/2:N/2-1]/N;
    subplot(2,2,2),
    plot(f,abs(f1))

    image3 = padarray(image,[96 96],0,'both')
    f1 = fft2(image3)
    f1 = fftshift(f1)
    N = length(image3);
    f = [-N/2:N/2-1]/N;
    subplot(2,2,3),
    plot(f,abs(f1))

    image4 = padarray(image,[224 224],0,'both')
    f1 = fft2(image4)
    f1 = fftshift(f1)
    N = length(image4);
    f = [-N/2:N/2-1]/N;
    subplot(2,2,4),
    plot(f,abs(f1))