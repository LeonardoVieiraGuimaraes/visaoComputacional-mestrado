%filtro gaussiano com tranformada 

I = imread('serro.bmp');
I = rgb2gray(I);
G = [1 2 1; 2 4 2;1 2 1];

FI = fft2(I);
FL = fft2(L,256,256);
B = ifft2(FI.*FL);
figure
imshow([I B]);

%Equivale a:

C = filtrolinear(I,L);
figure
imshow(C);

