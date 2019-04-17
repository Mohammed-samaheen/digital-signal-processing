function [signal,fs] = q7_3(input)
    input=num2str(input)-'0';
    fs=44100;
    tp= 0:1/fs:1-0.5/fs;
	signal=[];
	
	a=[941,697,697,697,770,770,770,852,852,852];
	b=[1336,1209,1209,1209,1336,1336,1336,1447,1447,1447];
	
	
	pause = zeros (1,fs/3);
	
	for i = 1 : size(input,2)
		signal = [signal 10*sin(2*pi*a(input(i)+1)*tp)+10*sin(2*pi*b(input(i)+1)*tp) pause];
    end
end