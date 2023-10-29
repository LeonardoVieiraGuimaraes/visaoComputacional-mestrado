function C = equaliza(B, a,b,t)
    [m,n] = size(B);
    for i = 1:m
        for j=1:n
            x = double(B(i,j));
            x = (255-0)/(b-a)*(x-a);
            x = abs(double(x)/255)^t;
            C(i,j)=x*255;
        end
    end
    C = uint8(C);
end
    