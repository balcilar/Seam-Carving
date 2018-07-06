function view_seam(im,seam,seamDirection)
figure;imshow(im);
hold on;
if strcmp('VERTICAL',seamDirection) 
    plot(seam,[1:size(im,1)]','r-','linewidth',2); 
    title('verticle seam');
    
elseif strcmp('HORIZONTAL',seamDirection)
    plot([1:size(im,2)]',seam,'r-','linewidth',2);    
    title('horizontal seam');
end