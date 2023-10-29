function CC = testface(F,U,med,c)

    CC = zeros(20,20);
    k = size(F,2);
    
    for i = 1:60
        
        if (mod(i,3) == c)
          
            c1 = ceil(i/3);
            imagem = sprintf('img/%i.png',i);
            A = double(rgb2gray(imread(imagem)))/255;
            [L, C] = size(A);
            e = reshape(A,L*C,1);
            f = U(:,1:k)'*(e-med);
            
            for j=1:k
                tmp(j) = norm(F(:,j)-f,2);
            end
            
            [w, c2] = min(tmp);
            c2 = ceil(c2/2);
            CC(c1,c2) = CC(c1,c2) + 1;
        end
    end
    
    sum(diag(CC))/sum(sum(CC))
    imshow(1-CC);
end