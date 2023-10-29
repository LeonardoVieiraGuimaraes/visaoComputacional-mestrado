function h = myhist(A)
    [m,n] = size(A);
    h = zeros(256,1);
    for i = 1:n
        for j = 1:m
            k = A(i,j);
            h(k+1) = h(k+1) + 1;
        end
    end
bar(h);
end