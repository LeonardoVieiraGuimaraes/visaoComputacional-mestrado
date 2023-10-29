clear all;
close all;

I = imread('serro.bmp');

%filtro gaussiano
%A = [1 2 1; 2 4 2; 1 2 1];
A1 = gaussian(5,1);
figure
B1 = filtrolinear(I,A1);

%filtro laplaciano
%A2 = [1 1 1; 1 -8 1; 1 1 1];
A2 = [0 1 0; 1 -4 1; 0 1 0];
figure
B2 = filtrolinear(I,A2);

%filtro tranformada furrier
figure
[F S] = freqfilter(B2,0,0);
 




