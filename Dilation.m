%% Dilation with a disk as a structuring element 
clear all
%Image of a square with a hole
originalBW1 = imread('image_hole.png');         %load image
SE = strel('disk', 10);                         %structuring element
dilatedBW1 = imdilate(originalBW1,SE);           %dilate the image with the structuring element 

%Image of squares connected at corner
originalBW2 = imread('erosion_ex.png');  
dilatedBW2 = imdilate(originalBW2,SE);

%Plot figures 
figure(1)
subplot(2,2,1);
imshow(originalBW1)
title('Original image');
subplot(2,2,2);
imshow(dilatedBW1)
title('Image after dilation');
subplot(2,2,3);
imshow(originalBW2)
title('Original image');
subplot(2,2,4);
imshow(dilatedBW2)
title('Image after dilation');