clear all
clc

im=imread('inputSeamCarvingPrague.jpg');

energyImg = energy_img(im);

nim=im;
nen=energyImg;
for i=1:100
    i
    [nim,nen] = decrease_width(nim,nen);
end

imwrite(nim,'outputReduceWidthPrague.png');

figure;subplot(2,1,1);imshow(im);
title('Original Prague');
subplot(2,1,2);imshow(nim);
title('100 width decreased Prague');

figure;imshow(im);
title('Original Prague');
figure;imshow(nim);
title('100 width decreased Prague');



im=imread('inputSeamCarvingMall.jpg');

energyImg = energy_img(im);

nim=im;
nen=energyImg;
for i=1:100
    i
    [nim,nen] = decrease_width(nim,nen);
end

imwrite(nim,'outputReduceWidthMall.png');

figure;subplot(2,1,1);imshow(im);
title('Original Mall');
subplot(2,1,2);imshow(nim);
title('100 width decreased Mall');

figure;imshow(im);
title('Original Mall');
figure;imshow(nim);
title('100 width decreased Mall');

