function [median_img] = Compute_Median(I,K)

%size of kernel
[ni,nj] = size(K);
%size of image
[m,m] = size(I);
%padding the given image
%pad_size must be vector of positive ints
pad_size_i = 2.*floor(ni/2);
pad_size_j = 2.*floor(nj/2);
%padmethod - replicate --- directions - both
img_pad = padarray(I,[pad_size_i pad_size_j],"replicate","both");
[rows,columns] = size(img_pad);

for i = 1 + floor(ni/2)+1: floor(ni/2) :rows -ni
    for j = 1 + floor(nj/2)+1: floor(nj/2) :columns -nj
        P = img_pad(i-floor(ni/2): i+floor(ni/2), j-floor(nj/2):j+floor(nj/2));
        median_patch = median(P);
        img_pad(i,j) = median(median_patch);
    end
end

     median_img = img_pad;
end