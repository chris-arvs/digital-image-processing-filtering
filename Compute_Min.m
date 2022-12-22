function [min_img] = Compute_Min(I,K)
%size of kernel
[ni,nj] = size(K);
%size of image
[m,m] = size(I);
%padding the given image
%pad_size must be vector of positive ints
pad_size_i = 2.*floor(ni/2);
pad_size_j = 2.*floor(nj/2);
%padmethod - symmetric --- directions - both
img_pad = padarray(I,[pad_size_i pad_size_j],'symmetric','both');
[rows,columns] = size(img_pad);

for i = 1 + floor(ni/2)+1: floor(ni/2) :rows -ni
    for j = 1 + floor(nj/2)+1: floor(nj/2) :columns -nj
        P = img_pad(i-floor(ni/2): i+floor(ni/2), j-floor(nj/2):j+floor(nj/2));
        min_patch = min(P);
        img_pad(i,j) = min(min_patch);
    end
end

     min_img = img_pad;
end