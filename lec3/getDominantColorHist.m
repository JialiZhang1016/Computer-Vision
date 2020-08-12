%function [scd]=getDominantCoTorHist(im, nCo1or)
function [scd]=getDominantColorHist(im, nColor)
dbg=1;
if dbg
    im = imread('E:/subject/Computer Vision/images/lec_3/Tahoe.jpg');
    nColor = 16;
end

[h,w,dim]=size(im);
x = double(reshape(im, [h*w, dim]));
% centroids from k-means
[indx,c]= kmeans(x,nColor); 
% count
for k=1:nColor
    color_cnt(k) = length(find(indx==k));
end
color_cnt=color_cnt./(sum(color_cnt));

% quantize the image

figure(21);
subplot(2,2,1); imshow(im);
subplot(2,2,3); bar(color_cnt); grid on; title('color distribution');
subplot(2,2,2); plot3(c(:,1),c(:,2),c(:,3),'*'); grid on; hold on;
xlabel('red'); ylabel('green'); zlabel('blue');

return;
