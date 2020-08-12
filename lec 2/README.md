# Image Formation

## Camera model
- 人类眼部结构图
- 人类视觉系统pipeline
- 现代电子相机pipeline

## Color space
- color sensring
    > CCD  
    > CMOS  
    > Samsung ISOCELL  
- dynamic range

## Color model manipulation and transform
- Tri-Chromatic Theory  
    > RGB  
    > CMY

## Demosaic - from sensor field to image pixels
- 去马赛克滤镜
    > fill the holes of missing RGB
- YCC to RGB transformation

## Color based image features
- color histogram  
```matlab
im = imread('cameraman.tif');
h=imhist(im);
```
- MPEG7
- color filter 
    > objectives  
    > 降噪/色彩敏锐度  

## A taste of deep learning based dark image enhancement
- dark image enhancement
