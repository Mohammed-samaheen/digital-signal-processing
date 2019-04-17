function [out] = gaussFilter(size , sigma)
out = zeros(size,size);
for i = -(size-1)/2:(size-1)/2
    for j = -(size-1)/2:(size-1)/2
        x0 = (size + 1)/2;
        y0 = (size + 1)/2;
        x = i + x0;
        y = j + y0;
        out(y,x) = exp(-((i)^2+(j)^2)/2/sigma/sigma);
    end
end

sum1 = sum(out);
sum2 = sum(sum1);
out = out/sum2;
end
