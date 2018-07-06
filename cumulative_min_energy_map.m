function cumulativeEnergyMap = cumulative_min_energy_map(energyImg,seamDirection)
M=zeros(size(energyImg));
if strcmp('VERTICAL',seamDirection)   
    
    M(1,:)=energyImg(1,:);
    M(2:end,1)=inf;
    M(2:end,end)=inf;
    for i=2:size(M,1)
        for j=2:size(M,2)-1
            M(i,j)=energyImg(i,j)+min(M(i-1,j-1:j+1));
        end
    end
    
elseif strcmp('HORIZONTAL',seamDirection)
    
    M(:,1)=energyImg(:,1);
    M(1,2:end)=inf;
    M(end,2:end)=inf;
    for i=2:size(M,2)
        for j=2:size(M,1)-1
            M(j,i)=energyImg(j,i)+min(M(j-1:j+1,i-1));
        end
    end
end

cumulativeEnergyMap=M;
    