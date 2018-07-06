function horizontalSeam = find_horizontal_seam(cumulativeEnergyMap)

horizontalSeam=zeros(size(cumulativeEnergyMap,2),1);

[a b]=min(cumulativeEnergyMap(:,end));
horizontalSeam(end)=b;
for i=size(cumulativeEnergyMap,2)-1:-1:1
    [a bb]=min(cumulativeEnergyMap(b-1:b+1,i));
    b=b+bb-2;
    horizontalSeam(i)=b;
end