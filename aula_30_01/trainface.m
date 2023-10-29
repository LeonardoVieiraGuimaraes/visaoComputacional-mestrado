function [U F med] = trainface(a,b)
p = 0;
    M = [];
    for i = 1:60
        
        if (mod(i,3)==a || mod(i,3)==b)
            imagem = sprintf('img/%i.png',i);
            A = imread(imagem);
            A = rgb2gray(A);
            A = double(A)/255;
            [L,C] = size(A);
            e = reshape(A,L*C,1);
            M = [M e];
        end
    end
    
    k = size(M,2);
    med = mean(M,2);
    
    for i = 1:k
        M(:,i) = M(:,i) - med;
    end
    
    [U S V] = svd(M);
    F = U(:,1:k)'*M;
end
    
            