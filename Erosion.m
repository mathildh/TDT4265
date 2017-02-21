%% Erosion with a disk as a structuring element 
clear all 
%Image of a square with a hole
originalBW1 = imread('image_hole.png');         %load image 
SE = strel('disk', 10);                         %structuring element
erodedBW1 = imerode(originalBW1,SE);            %erode the image with the structuring element 

%Image of squares connected at corner
originalBW2 = imread('erosion_ex.png');         
erodedBW2 = imerode(originalBW2,SE);

%Plot figures 
figure(1)
subplot(2,2,1);
imshow(originalBW1)
title('Original image');
subplot(2,2,2);
imshow(erodedBW1)
title('Image after erosion');
subplot(2,2,3);
imshow(originalBW2)
title('Original image');
subplot(2,2,4);
imshow(erodedBW2)
title('Image after erosion');