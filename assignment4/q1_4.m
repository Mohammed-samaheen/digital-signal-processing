image = imread('LAKE.TIF');

func = @(blockstructure) q1_4_func(blockstructure.data);

new_image = blockproc(double(image),[8,8],func);

res1 = RMSE(image,new_image);

res2 = My_entropy(new_image);

imshow(uint8(new_image));
