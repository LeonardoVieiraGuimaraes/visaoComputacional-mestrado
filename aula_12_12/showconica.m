function C = showconica(image)
    S = imread(image);
    [m n k] = size(S);
    if (k>1)
        S = rgb2gray(S);
    end
    X = [];
    Y = [];
    for i = 1:m 
        for j=1:n
            if (S(i,j)>0)
                X = [X; i];
                Y = [Y; j]; 
            end
        end
    end
    [a b c d e f] = conica(X',Y');
    C = [];
    for x = 1:m
        for y = 1:n
            C(x,y) = (a*x^2 + b*y^2 + c*x*y + d*x + e*y + f)^0.2;
        end
    end
    imshow([S,(1-C)*255]);
end

    
    