clear all
clc

im=imread('inputSeamCarvingPrague.jpg');

energyImg = energy_img(im);

nim=im;
nen=energyImg;
for i=1:50
    i
    [nim,nen] = decrease_height(nim,nen);
end

imwrite(nim,'outputReduceHeightPrague.png');

figure;subplot(1,2,1);imshow(im);
title('Original Prague');
subplot(1,2,2);imshow(nim);
title('50 height decreased Prague');

figure;imshow(im);
title('Original Prague');
figure;imshow(nim);
title('50 height decreased Prague');



im=imread('inputSeamCarvingMall.jpg');

energyImg = energy_img(im);

nim=im;
nen=energyImg;
for i=1:50
    i
    [nim,nen] = decrease_height(nim,nen);
end

imwrite(nim,'outputReduceHeightMall.png');

figure;subplot(1,2,1);imshow(im);
title('Original Mall');
subplot(1,2,2);imshow(nim);
title('50 height decreased Mall');

figure;imshow(im);
title('Original Mall');
figure;imshow(nim);
title('50 height decreased Mall');

