function [reducedColorImg,reducedEnergyImg] = decrease_height(im,energyImg)


cumulativeEnergyMapH = cumulative_min_energy_map(energyImg,'HORIZONTAL');

horizontalSeam = find_horizontal_seam(cumulativeEnergyMapH);

for i=1:length(horizontalSeam)
    im(horizontalSeam(i):end-1,i,:)=im(horizontalSeam(i)+1:end,i,:);
end

reducedColorImg=im(1:end-1,:,:);
reducedEnergyImg=energy_img(reducedColorImg);
