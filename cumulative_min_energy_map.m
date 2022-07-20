function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
M=zeros(size(energyImg));
if strcmp('VERTICAL',seamDirection)   
    
    M(1,:)=energyImg(1,:);
    for i=2:size(M,1)
        m = movmin(M(i-1,:),3);
        M(i,:) = energyImg(i,:) + m; 
    end
    
elseif strcmp('HORIZONTAL',seamDirection)
    
    M(:,1)=energyImg(:,1);
    for i=2:size(M,2)
        m = movmin(M(:,i-1),3);
        M(:,i) = energyImg(:,i) + m;
    end
end

cumulativeEnergyMap=M;
    