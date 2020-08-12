# Image Formation - Geometry

## Summary
- Pixels not only carry color information, but also carry geometry info 
- Given 3D scene, a camera model, pixels locations on the image plane is uniquely determined 
- The reverse problem is not as easy (but deep learning is making good progress on single view depth estimation) 
- Homography: how pixels are related - implications in image retrieval

## 1. Recap of Lec 02
- Demosaicing  
- DMCNN 
- HSV (Hue, Satuation and Value/brightness) Color Model  
cone
- MPEG-7 Scalable Color Descriptor (SCD)  
H is quantized to 16 bin and S and V are quantized to 4 bins each.  
16\*4\*4 = 256 bins  
Hamming distance
- Color Histogram  
cannot capture spatial info  
**Matlab Implementation**  
  > `getHSVHist(im)` function
- Adaptive Bin Color Histogram  
SCD uses fixed color bins  
Dominant Color Descriptor  
  > Color Space Quantization (k-means)  
  > Adaptive Bin Color Histogram  
  > Distance Metric    
**Matlab Implementation**  
  > `getDominantColorHist(im,nColor)` function 
  
## 2. Projection Geometry of Image Formation  
Pinhole Camera  
P = [X,Y,Z]  
### Homogeneous Coordinates  
**a point**: P = [x,y,z,1]'  
**a plane**: Q = [a,b,c,-d]'  
### Camera Intrinsic + Extrinsic Parameters  
**x=K[R t]X**  
  > x: Image Coordinates: (u,v,1)  
  > K: Intrinsic Matrix (3x3)  
  > R: Rotation (3x3)  
  > t: Translation (3x1)  
  > X: World Coordinates: (X,Y,Z,1)  
**Intrinsic:** camera center:[u0, v0], focus/aspect ratio:[alpha,beta]= [kf, lf]  
**Extrinsic:** Rotation R=RxRyRz, translation t=[tx, ty, tz]  

##  3. Homography  
```matlab
%vl_feat package SIFT matching:   
[fa, da] = vl_sift (Ia) ;   
[fb, db] = vl_sift (Ib) ;   
[matches, scores] = vl_ubcmatch (da, db) ;  
```
- Similarity vs Affine vs Projective  
Similarity: squares imaged as squares.  
Affine: parallel lines remain parallel; circles become ellipses.  
Projective: Parallel lines converge.  
- DLT Algorithm (Direct linear transformation)  
SVD revisited  
**VL_FEAT Implementation**  
- noisy matches? Ramdom Sample Consensus (RANSAC):  
  1. select random matches, fit a DLT model, count how many samples are in agreement with this model  
  2. repeat N times, pick the best model, compute least square error fit of the best model predicted consensus samples
  


