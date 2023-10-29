close all;
clear all;

im = imread('serro.bmp');
im = im2double(im);
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

[m,n] = size(R);

T = [0.49000 0.17697 0; 0.31000 0.81240 0.01000; 0.20000 0.01063 0.99000];



for i = 1:m
    for j = 1:n
        X(i,j,1) = T(1,:)*[R(i,j); G(i,j); B(i,j)];
        X(i,j,2) = T(2,:)*[R(i,j); G(i,j); B(i,j)];
        X(i,j,3) = T(3,:)*[R(i,j); G(i,j); B(i,j)];
    end
end

imshow(X)
 