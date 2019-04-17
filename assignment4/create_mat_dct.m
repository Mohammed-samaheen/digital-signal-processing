function output = create_mat_dct()
    x = [1:2:15];
    y = [0:7];
    [a, b] = meshgrid(x,y);
    temp = a.*b;
    output = cos(temp*pi/16)/2;
    output(1,:) = 1/sqrt(8);
