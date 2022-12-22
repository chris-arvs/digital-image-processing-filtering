close all;
clear all;

% ---- Compute Mean for image1,image2 with kernel 3x3,5x5,9x9
I1_Mean = imread('Mean_Image1.jpeg');
I2_Mean = imread('Mean_Image2.jpeg');

K1 = fspecial('gaussian', [3 3], 1);
K2 = fspecial('gaussian', [5 5], 1);
K3 = fspecial('gaussian', [9 9], 1);

meanI1_k1 = Compute_Mean(I1_Mean,K1) ;
meanI1_k2 = Compute_Mean(I1_Mean,K2) ;
meanI1_k3 = Compute_Mean(I1_Mean,K3) ;

meanI2_k1 = Compute_Mean(I2_Mean,K1) ;
meanI2_k2 = Compute_Mean(I2_Mean,K2) ;
meanI2_k3 = Compute_Mean(I2_Mean,K3) ;

imwrite(meanI1_k1,'meanI1_k1.jpeg');
imwrite(meanI1_k2,'meanI1_k2.jpeg');
imwrite(meanI1_k3,'meanI1_k3.jpeg');

imwrite(meanI2_k1,'meanI2_k1.jpeg');
imwrite(meanI2_k2,'meanI2_k2.jpeg');
imwrite(meanI2_k3,'meanI2_k3.jpeg');

% ---- Compute Median for image1,image2 with kernel 5x7,3x3,9x11
I1_Median = imread('Median_Image1.png');
I2_Median = imread('Median_Image2.png');

K1 = fspecial('gaussian', [5 7], 1);
K2 = fspecial('gaussian', [3 3], 1);
K3 = fspecial('gaussian', [9 11], 1);

medianI1_k1 = Compute_Median(I1_Median,K1) ;
medianI1_k2 = Compute_Median(I1_Median,K2) ;
medianI1_k3 = Compute_Median(I1_Median,K3) ;

medianI2_k1 = Compute_Median(I2_Median,K1) ;
medianI2_k2 = Compute_Median(I2_Median,K2) ;
medianI2_k3 = Compute_Median(I2_Median,K3) ;

imwrite(medianI1_k1,'medianI1_k1.png');
imwrite(medianI1_k2,'medianI1_k2.png');
imwrite(medianI1_k3,'medianI1_k3.png');

imwrite(medianI2_k1,'medianI2_k1.png');
imwrite(medianI2_k2,'medianI2_k2.png');
imwrite(medianI2_k3,'medianI2_k3.png');

% ---- Compute Max for image1,image2 with kernel 3x5,5x5,7x7
I1_MinMax = imread('Min_Max_Image1.jpeg');
I2_MinMax = imread('Min_Max_Image2.jpeg');

K1 = fspecial('gaussian', [3 5], 1);
K2 = fspecial('gaussian', [5 5], 1);
K3 = fspecial('gaussian', [7 7], 1);

maxI1_k1 = Compute_Max(I1_MinMax,K1) ;
maxI1_k2 = Compute_Max(I1_MinMax,K2) ;
maxI1_k3 = Compute_Max(I1_MinMax,K3) ;

maxI2_k1 = Compute_Max(I2_MinMax,K1) ;
maxI2_k2 = Compute_Max(I2_MinMax,K2) ;
maxI2_k3 = Compute_Max(I2_MinMax,K3) ;

imwrite(maxI1_k1,'maxI1_k1.jpeg');
imwrite(maxI1_k2,'maxI1_k2.jpeg');
imwrite(maxI1_k3,'maxI1_k3.jpeg');

imwrite(maxI2_k1,'maxI2_k1.jpeg');
imwrite(maxI2_k2,'maxI2_k2.jpeg');
imwrite(maxI2_k3,'maxI2_k3.jpeg');

% ---- Compute Min for image1,image2 with kernel 3x5,5x5,7x7
minI1_k1 = Compute_Min(I1_MinMax,K1) ;
minI1_k2 = Compute_Min(I1_MinMax,K2) ;
minI1_k3 = Compute_Min(I1_MinMax,K3) ;

minI2_k1 = Compute_Min(I2_MinMax,K1) ;
minI2_k2 = Compute_Min(I2_MinMax,K2) ;
minI2_k3 = Compute_Min(I2_MinMax,K3) ;

imwrite(minI1_k1,'minI1_k1.jpeg');
imwrite(minI1_k2,'minI1_k2.jpeg');
imwrite(minI1_k3,'minI1_k3.jpeg');

imwrite(minI2_k1,'minI2_k1.jpeg');
imwrite(minI2_k2,'minI2_k2.jpeg');
imwrite(minI2_k3,'minI2_k3.jpeg');

% ---- Results/Figures ------------
f1 = figure(1);
montage({'meanI1_k1.jpeg','meanI1_k2.jpeg','meanI1_k3.jpeg'})
title("Mean filter on mean_Image1,with kernel 3x3 5x5 9x9")
f2 = figure(2);
montage({'meanI2_k1.jpeg','meanI2_k2.jpeg','meanI2_k3.jpeg'})
title("Mean filter on mean_Image2,with kernel 3x3 5x5 9x9")
f3 = figure(3);
montage({'medianI1_k1.png','medianI1_k2.png','medianI1_k3.png'})
title("Median filter on Median_Image1,with kernel 5x7,3x3,9x11")
f4 = figure(4);
montage({'medianI2_k1.png','medianI2_k2.png','medianI2_k3.png'})
title("Median filter on Median_Image2,with kernel 5x7,3x3,9x11")
f5 = figure(5);
montage({'maxI1_k1.jpeg','maxI1_k2.jpeg','maxI1_k3.jpeg'})
title("Max filter on Min_Max_Image1,with kernel 3x5,5x5,7x7")
f6 = figure(6);
montage({'maxI2_k1.jpeg','maxI2_k2.jpeg','maxI2_k3.jpeg'})
title("Max filter on Min_Max_Image2,with kernel 3x5,5x5,7x7")
f7 = figure(7);
montage({'minI1_k1.jpeg','minI1_k2.jpeg','minI1_k3.jpeg'})
title("Min filter on Min_Max_Image1,with kernel 3x5,5x5,7x7")
f8 = figure(8);
montage({'minI2_k1.jpeg','minI2_k2.jpeg','minI2_k3.jpeg'})
title("Min filter on Min_Max_Image2,with kernel 3x5,5x5,7x7")

saveas(f1,"fig1.jpeg");
saveas(f2,"fig2.jpeg");
saveas(f3,"fig3.jpeg");
saveas(f4,"fig4.jpeg");
saveas(f5,"fig5.jpeg");
saveas(f6,"fig6.jpeg");
saveas(f7,"fig7.jpeg");
saveas(f8,"fig8.jpeg");