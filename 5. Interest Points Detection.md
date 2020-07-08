# Lec 05: Interest Points Detection
## Corner Detector
### 1. Steps
1. Find a set of distinctive key-points
2. Define a region around each keypoint
3. Extract and normalize the region content
4. Compute a local descriptor from the normalized region
5. Match local descriptors

### 2.Corner Detection

### Basic Idea
- “flat” region: no change in all directions
- “edge”: no change along the edge direction
- “corner”: significant change in all directions

### Mathematics
We want to find out how this function behaves for small shifts.  
[github的markdown文件中插入公式](http://www.wanguanglu.com/2016/07/18/github-markdown-equation/)

$$E(u,v) = \sum{w(x,y)[I(x+u,y+v)-I(x,y)]^2}$$ 

second-order Taylor expansion of E(u,v) about (0,0)

$$E(0,0)=0$$

$$E_u(0,0)=0$$

$$E_v(0,0)=0$$

$$E_{uu}(0,0)=\sum2w(x,y)I_x(x,y)I_x(x,y)$$

$$E_{vv}(0,0)=\sum2w(x,y)I_y(x,y)I_y(x,y)$$

$$E_{uv}(0,0)=\sum2w(x,y)I_x(x,y)I_y(x,y)$$

Classification of image points using eigenvalues of M

### Harris Corner Detector
1. Compute M matrix for each image window to get their cornerness scores. 
2. Find points whose surrounding window gave large corner response (f> threshold) 
3. Take the points of local maxima, i.e., perform non-maximum suppression

**Harris Response Function**:
$$R_{harris}(x,y)=det(M)-a*trace(M)$$

## 3. Invariances
- affine intensity change
- translation
- rotation
- scaling? (corner location is NOT invariant to scaling)

## Summary
- Harris Point Detection: Use 2nd moment/Hessian matrix to estimate how repeatable the image patch is 
- Scale space invariance: gradient detection is a function of scale/sigma of Gaussian as well. Harris detector is NOT scale invariant 
- Interesting points description: invariance to rotation by rotating against dominant gradient directions. (SIFT scheme)
