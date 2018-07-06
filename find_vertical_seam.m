function verticalSeam = find_vertical_seam(cumulativeEnergyMap)

verticalSeam=zeros(size(cumulativeEnergyMap,1),1);

[a b]=min(cumulativeEnergyMap(end,:));
verticalSeam(end)=b;
for i=size(cumulativeEnergyMap,1)-1:-1:1
    [a bb]=min(cumulativeEnergyMap(i,b-1:b+1));
    b=b+bb-2;
    verticalSeam(i)=b;
end


