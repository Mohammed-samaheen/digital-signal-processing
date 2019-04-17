function [image_out] = nearestNeighbourInterpolation(img,x)
    scale = [x x];
    img=imread(img);
    old_size=size(img);
    new_size = x.*old_size;
    new_img_col=min(round((1:new_size(2)-0.5)./scale(2)+.5),old_size(2));
    new_img_row=min(round((1:new_size(1)-0.5)./scale(1)+.5),old_size(1));
    image_out = img(new_img_row,new_img_col);
    imshow(uint8(image_out));
end