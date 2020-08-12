%function [scd]=getHSVHist(im)
function [scd]=getHSVHist(im, nH, nS, nV)
dbg=1;
if dbg
    im = imread('E:/subject/Computer Vision/images/lec_3/Tahoe.jpg');
    nH=8;nS=4;nV=4;
end

im1 = rgb2hsv(im);
[h,w,dim]=size(im);
x = reshape(im1,[h*w,3]);
% centroids
c1=[1:nH]*(1/(nH+1));
c2=[1:nS]*(1/(nS+1));
c3=[1:nV]*(1/(nV+1));

[h1,v1]=hist(x(:,1),c1);
[h2,v2]=hist(x(:,2),c2);
[h3,v3]=hist(x(:,3),c3);

figure(21);
subplot(1,3,1);bar(v1,h1);xlabel('hue');
subplot(1,3,2);bar(v2,h2);xlabel('satuation');
subplot(1,3,3);bar(v3,h3);xlabel('value');

return
