function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg)


cumulativeEnergyMapV = cumulative_min_energy_map(energyImg,'VERTICAL');

verticalSeam = find_vertical_seam(cumulativeEnergyMapV);

for i=1:length(verticalSeam)
    im(i,verticalSeam(i):end-1,:)=im(i,verticalSeam(i)+1:end,:);
end

reducedColorImg=im(:,1:end-1,:);
reducedEnergyImg=energy_img(reducedColorImg);
