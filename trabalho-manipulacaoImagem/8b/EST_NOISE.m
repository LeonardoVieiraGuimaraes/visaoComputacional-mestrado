clear all;
close all;

for k = 1:11
    im =  imread(sprintf('im%d.jpg',k));
    im = rgb2gray(im);
    im = imresize(im,0.1);
    E(:,:,k) = im2double(im);
end

[m,n] = size(im);

for i = 1:m
    for j = 1:n
        Er(i,j) = mean(E(i,j,:));
        Dr(i,j) = std(E(i,j,:));
    end
end


imshow(Er);