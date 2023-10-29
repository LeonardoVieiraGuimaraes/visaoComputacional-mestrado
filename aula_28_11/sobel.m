function S = sobel(image,t)
    A = imread(image);
    A = rgb2gray(A);
    
    [l,c] = size(A);
    
    G = gaussian(5,1);
    B = filtrolinear(A,G);
    
    X = [-1 -2 -1; 0 0 0; 1 2 1];
    Y = [-1 0 1; -2 0 2; -1 0 1];
    X = double(X);
    Y = double(Y);
    
    DX = double(filtrolinear(B,X));
    DY = double(filtrolinear(B,Y));
    
    S = zeros(l,c);
    for i = 5:l-5
        for j = 5:c-5
            G(i,j) = sqrt(DX(i,j)^2 + DY(i,j)^2);
            if (G(i,j)>t)
                S(i,j) = 255;
            end
        end
    end
    imshow([A, S]);
end
    