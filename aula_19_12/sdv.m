%nuvem
%figure
%plot3(A(1,:),A(2,:),A(2,:),'.');
%B = u*s*v';
%figure
%plot3(B(1,:),B(2,:),B(3,:),'.');
%B = u(:,1:2)*s(1:2,1:2)*v(:,1:2)';
%figure
%plot3(B(1,:),B(2,:),B(3,:),'.');

A = imread('serro.bmp');

A = rgb2gray(A);
A = double(A);
A = A/255;
[u s v]= svd(A);
figure
a = 1;
b = 50;
imshow([u s v u(:,a:b)*s(a:b,a:b)*v(:,a:b)']);





