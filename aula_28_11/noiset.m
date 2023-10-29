function E = noiset(E,k,vmin,vmax)
    [l,c] = size(E);
    
    for i = 1:l
        for j = 1:c
            x = rand;
            y = rand;
            if (x < k)
                E(i,j) = vmin + y*(vmax - vmin);
            end
        end
    end
end
                
            