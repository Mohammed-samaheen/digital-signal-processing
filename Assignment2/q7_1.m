function [Output] = q7_1(input,winLen,strideLen)

% length of signal %
max_length = size(input,1);

% returns an N-point Gaussian window in a column vector%
gaussian_output = gausswin(winLen);

% ceil(A) rounds the elements of A to the nearest integers greater than or equal to A .%
Diff = winLen-strideLen;
totalRow = ceil(max_length/Diff);

% variables for calculation%
Intial_index = 1;
i = 1;
Temp = 1;

Final_output = [totalRow,winLen];

while Temp == 1

    End_index = Intial_index + winLen-1;
    Temp_length = End_index - Intial_index;    
    if End_index > max_length
        End_index = max_length;
        Temp = 0;
        Temp_gaussian_length = End_index - Intial_index + 1;
        gaussian_output = gausswin(Temp_gaussian_length);
    end
    
    %Start_index = Intial_index;
    % for proper orientation%
    A = input(Intial_index:End_index).*gaussian_output;
    A = fft(A);
    A = abs(A);
    Temp_length = End_index - Intial_index;
    Temp_output_length = min(winLen, Temp_length + 1);
    Final_output(i , 1:Temp_output_length) = A;
    Intial_index = Intial_index + winLen - strideLen;
    i = i + 1;
    Output = Final_output;
end

            