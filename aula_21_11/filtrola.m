%filtro lapraciano com tranformada 

I = imread('serro.bmp');
I = rgb2gray(I);
%L = [0 1 0; 1 -4 1;0 1 0];
L = [1 1 1; 1 -8 1; 1 1 1];

FI = fft2(I);
FL = fft2(L,256,256);
B = ifft2(FI.*FL);
figure
imshow([I B]);

%Equivale a:

C = filtrolinear(I,L);
figure
imshow(C);

