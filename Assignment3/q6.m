% PART A
im = imread("q2im2.tiff");
graph1 = [];
for k = 1:2:101
    pad = k/2 - 1/2;
    im1 = padarray(im,[pad,pad],"both");

    [n,m] = size(im);
    [x,y] = meshgrid(1:m,1:n);
    
    tic
    for i = 1:n
        for j = 1:m
            xRange = i+k-1;
            yRange = j+k-1;
            temp = im1(i:xRange,j:yRange);
            temp2 = temp(:);
            x(i,j)=mean(temp2);
        end
    end
    temp1 = [graph1 toc];
    graph1 = temp1;
    
end

% graph2 = double.empty;
graph2 = [];
% PART B
for k = 1:2:101
st1 = 0;
tic
for i = 1:n
    if (i>1)
        xR = i+k-1;
        tp2 = im1(i-1,1:k);
        tp3 = im1(xR,1:k);
        temp1 = tp2(:);
        temp2 = tp3(:);
        st1 = st1-sum(temp1)+sum(temp2);
    end
    st2 = st1;
    for j = 1:m
        if(i==1 && j==1)
            xRange = i+k-1;
            yRange = j+k-1;
            temp = im1(i:xRange,j:yRange);
            st1 = sum(temp(:));
            st2 = st1;
            y(i,j) = st1/(k*k);
        elseif(j==1)
            y(i,j) = st2/(k*k);   
        else
            xRange = i+k-1;
            yRange = j+k-1;
            temp1 = im1(i:xRange,j-1);
            temp2 = im1(i:xRange,yRange);
            s1 = sum(temp1(:));
            s2 = sum(temp2(:));
            st2 = st2-s1+s2;
            y(i,j) = st2/(k*k);
        end
    end
end
temp = [graph2 toc];
graph2 = temp;
end


ran = 1:2:101;
plot(ran,graph1);
hold on
plot(ran,graph2);
