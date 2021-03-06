# Lec 04: Filtering and Edge Features
## 1. Recap of Lec 03
- Perspective Projection &Homography
- SVD and an example
- HW-1

## 2. Image Filtering – A Quick Review
### Image Filters
**1. Image**
- We can think of a (grayscale) image as a function
- common to use one byte per value: 0 = black, 255 = white
	- f (x,y) gives the intensity at position (x,y)
	- A digital image is a discrete (sampled, quantized) version of this function

**2. Filter**
- Modify the pixels in an image based on some function of a local neighborhood of each pixel
- Linear filtering
	- kernel, mask, filter
	- cross-correlation
	- convolution(卷积)
- Linear filters: examples
	- Identity filter
	- Shift Filter(平移)
	- Average/Blurring(模糊化)
	- Sharpen: remove the average(锐化)
- Linear Filtering Properties
	- Shift-Invariant
	- Associative
	- Distributive
- Non-Linear Filters: Mean filtering

### Edge Detection
**1. dge detection**
- An edge is a place of rapid change in the image intensity function
- noisy images: Smoothing before gradient computing

**2. Edge description**
- DoG filter(derivative of Gaussian(x))
- Sobel Filter

## 3. Edge Descriptors
**HOG – Histogram of Oriented Gradient**
very successful feature, simple to compute, spatial partitioning of images blocks, and then compute gradient stats. 

