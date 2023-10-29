function F = DFT1D(I,s)
    I = double(I);
    n = length(I);
    F = zeros(1,n);
    for w = 0:n-1
        for x = 0:n-1
            F(w+1) = F(w+1) + 1/sqrt(n)*I(x+1)*(cos(-s*2*pi*w*x/n) - i*sin(-s*2*pi*w*x/n));
        end
    end
end