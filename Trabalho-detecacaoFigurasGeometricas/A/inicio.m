I = imread('parcial.png');
[m n d] = size(I);
if d>1
    I = rgb2gray(I);
end
A = houghcirculo(I,90,100);