function [S A] = corner(image,n)
    A = imread(image);
    A = rgb2gray(A);
    [l,c] = size(A);
    B = A; 
    
    DX = filtrolinear(A, [-1 -2 -1; 0 0 0; 1 2 1]);
    DY = filtrolinear(A, [-1 0 1; -2 0 2; -1 0 1]);
    
    L = [];
    S = A*0;
    
    for i = 2*n+2:l-2*n
        for j=2*n+2:c-2*n
            C = [];
            C(:,:,1) = DX(i-n:i+n, j-n:j+n);
            C(:,:,2) = DY(i-n:i+n, j-n:j+n);
            C = reshape(C,(2*n+1)^2,2);
            e = min(eig(C'*C));
            if (e>300000)
                L = [L;[e,i,j]];
                S(i,j) = 1;
            end
        end
    end
    P = sortrows(L,1);
    for k = 1:size(P);
        i = P(k,2);
        j = P(k,3);
        S(i-2*n:i+2*n,j-2*n:j+2*n)=zeros(4*n+1,4*n+1);
        S(i,j) = 255;
    end
    W = ones(2*n+1,2*n+1)*255;
    W(2:2*n,2:2*n) = 0; 
    W = uint8(W);
    for i = n+2:l-n
        for j=n+2:c-n
            if (S(i,j) > 0)
                B = A(i-n:i+n,j-n:j+n);
                A(i-n:i+n,j-n:j+n) = B+W;
            end
        end
    end
    imshow([S,A]);
end
                
            