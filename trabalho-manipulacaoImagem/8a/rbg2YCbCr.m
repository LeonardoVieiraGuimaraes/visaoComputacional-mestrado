clear all;

im = imread('serro.bmp');
im = im2double(im);
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

[m,n] = size(R);

T = [65.738 129.057 25.064; -37.945 -74.494 112.439; 112.439 -94.154 -18.285]/256;



for i = 1:m
    for j = 1:n
        X(i,j,1) = 16/256 + T(1,:)*[R(i,j); G(i,j); B(i,j)];
        X(i,j,2) = 128/256 + T(2,:)*[R(i,j); G(i,j); B(i,j)];
        X(i,j,3) = 128/256 + T(3,:)*[R(i,j); G(i,j); B(i,j)];
    end
end

imshow(X);