function Disp=disparidade(left, right, w)
    E = imread(left);
    D = imread(right);
    
    [l c n] = size(E);
    
    Disp = zeros(l,c);
    
    for i = w+1:l-w-1
        for j=w+1:c-w-1
            L = double(E(i-w:i+w,j-w:j+w,:));
            d = inf(1,c);
            for k = max(w+1, j-50):j
                R = double(D(i-w:i+w,k-w:k+w,:));
                d(k) = sum(sum(sum(abs(L-R))));
            end
            [s t] = min(d);
            Disp(i,j) = abs(j-t);
        end
    end
    %imshow(Disp/max(max(Disp)));
end
            

