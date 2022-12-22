# digital-image-processing-filtering

Digital image filtering is the main file.Data has the images that needed to run code.
In this project 4 filters were created.The mean,median,max and min filter.
The filter functions take as an arguments the image and a kernel,applies zero symetric padding in both directions in the image and for each pixel of the image a patch is extracted.
The patch size is depending on the kernel size.The function that is applied on the patch is either mean,median,max or min, depending on the filter function.
The kernel size and the filter has an impact on the result.Check the code for additional comments.

Notes: The mean filter decrease the noise of the image.(it takes for each patch the mean value).
The median filter almost removes the noise(it takes for each patch the median value).
Max filter is used to remove negative noise.(it takes for each path the maximum value).
Min filter is used to remove positive noise.(it takes for each path the minimum value).
