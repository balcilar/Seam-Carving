function energyImg = energy_img(im)

gray=double(rgb2gray(im));

dx=gray(:,2:end)-gray(:,1:end-1);
dy=gray(2:end,:)-gray(1:end-1,:);

energyImg= sqrt(dx(1:end-1,:).^2+dy(:,1:end-1).^2);
energyImg(end+1,end+1)=0;

