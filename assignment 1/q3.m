A = imread('Faces.jpg'),B = imread('F1.jpg');
imshow('Faces.jpg');
imshow('F1.jpg');
facessize = size(A),facesize = size(B);
m = facessize(1),n = facessize(2);
p = facesize(1),q = facesize(2);
gate = zeros(1,4);
min = inf;
for i = 1: m-p+1
     for j = 1: n-q+1
        if sum(sum(sum(A(i:i+p-1,j:j+q-1,:) -B))) < min ; 
            gate=[i i+p j j+q],min = sum(sum(sum(A(i:i+p-1,j:j+q-1,:) -B)));
        end    
     end
end
imshow(A(gate(1):gate(2),gate(3):gate(4),:));