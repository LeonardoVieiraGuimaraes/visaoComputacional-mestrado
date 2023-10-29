clear all;
close all;
A = imread('vw.png');
%A = rgb2gray(A);
%myhist(A);

a = min(min(A));
b = max(max(A));
C = equaliza(A,a,b,1/2);
%myhist(C);
imshow([A C]);





