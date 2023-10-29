clear all;
close all;

a = 0.2; % altera o ambiente
b = 0.4; % altera o difusa
c = 0.4; % altera especular
%cor 1 vermelho 2 verde 3 azul
cor = 3;
d = [1 0 1];


im = imread('man.png');
figure
D = ilumina(im, a, b, c, cor, d);


