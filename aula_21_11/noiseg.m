function E = noiseg(E,k)
    [l,c] = size(E);
    for i = 1:l
        for j = 1:c
            E(i,j) = E(i,j) + normrnd(0,k);
        end
    end
end
