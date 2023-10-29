function B = mediana(A)
    [m,n] = size(A);
    B = A;

    for i = 2:n-1
        for j = 2:n-1
            x = median(median(A(i-1:i+1,j-1:j+1)));
            B(i,j) = x;
        end
    end
    B = uint8(B);
end
    
