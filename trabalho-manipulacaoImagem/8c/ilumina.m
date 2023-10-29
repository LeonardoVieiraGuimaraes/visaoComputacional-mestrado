function D = ilumina(A, a, b, c, cor, d)
    
    C = rgb2gray(A);
    A = double(C);
    [l,c] = size(A);
    luz = d;
    luz = 1/norm(luz,2)*luz;

    o = [0,0,1];
    
    D(l,c,1:3) = 0;
    Amb (l,c,1:3) = 0;
    Dif (l,c,1:3) = 0;
    Esp (l,c,1:3) = 0;

    
    for i = 6:l-6
        for j = 6:c-6
            if (A(i,j)>1)
                u = [i+5,j,A(i+5,j)] - [i-5,j,A(i-5,j)];
                v = [i,j+5,A(i,j+5)]- [i,j-5,A(i,j-5)];
                n = cross(u,v);
                n = 1/norm(n,2)*n;
                l1 = 2*n*(n*luz')-luz;
                l1 = 1/norm(l1,2)*l1;
            
                Amb(i,j,cor) = 1;
                Dif(i,j,cor) = max(0,luz*n');
                Esp(i,j,cor) = max(0,(l1*o')^11);
                
                D(i,j,cor) = a*Amb(i,j,cor) + b*Dif(i,j,cor) + c*Esp(i,j,cor);
                            
            end
        end
    end
   imshow([Amb Dif; Esp D]);
end    