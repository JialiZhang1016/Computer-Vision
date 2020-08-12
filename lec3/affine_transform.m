% test image affine transform
I = imread('cameraman.tif')
tform = affine2d([1 0 0; .5 1 0; 0 0 1]);
J  = imwarp(I, tform);
figure, imshow(I),figure,imshow(J)