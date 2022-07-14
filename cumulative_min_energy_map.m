function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
M=zeros(size(energyImg));
if strcmp('VERTICAL',seamDirection)   
    
    M(1,:)=energyImg(1,:);
    M(2:end,1)=inf;
    M(2:end,end)=inf;
    for i=2:size(M,1)
        m = movmin(M(i-1,:),3);
        for j=2:size(M,2)-1
            M(i,j)=energyImg(i,j) + m(j);
        end
    end
    
elseif strcmp('HORIZONTAL',seamDirection)
    
    M(:,1)=energyImg(:,1);
    M(1,2:end)=inf;
    M(end,2:end)=inf;
    for i=2:size(M,2)
        m = movmin(M(:,i-1),3);
        for j=2:size(M,1)-1
            M(j,i)=energyImg(j,i) + m(j);
        end
    end
end

cumulativeEnergyMap=M;
    