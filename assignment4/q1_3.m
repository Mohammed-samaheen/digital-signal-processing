image= imread('LAKE.TIF');
FUNCTION = @(blockstructure) q1_2_func(blockstructure.data);
new_image = blockproc(double(image),[8,8],FUNCTION);
imshow(mat2gray(new_image));