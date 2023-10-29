function G = gaussian(n,s)
    m = floor(n/2);
    for h = -m:m
        for k = -m:m
            G(h+m+1,k+m+1) = exp(-((h)^2 + (k)^2)/(2*s^2));
        end
    end
    G = G/min(min(G));
    G = floor(G);
end
    