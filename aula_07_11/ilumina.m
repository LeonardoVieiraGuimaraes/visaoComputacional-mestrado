function D = ilumina(A)
    
    A = rgb2gray(A);
    A = double(A);
    [l,c] = size(A);
    luz = [0,0,1];
    luz = 1/norm(luz,2)*luz;

    o = [0,0,1];
    D = zeros(l,c);
    Amb = D;
    Dif = D;
    Esp = D;

    
    for i = 6:l-6
        for j = 6:c-6
            if (A(i,j)>1)
                u = [i+5,j,A(i+5,j)] - [i-5,j,A(i-5,j)];
                v = [i,j+5,A(i,j+5)]- [i,j-5,A(i,j-5)];
                n = cross(u,v);
                n = 1/norm(n,2)*n;
                l1 = 2*n*(n*luz')-luz;
                l1 = 1/norm(l1,2)*l1;
            
                Amb(i,j) = 1;
                Dif(i,j) = max(0,luz*n');
                Esp(i,j) = max(0,(l1*o')^11);
            
                D(i,j) = 0.2*Amb(i,j) + 0.4*Dif(i,j) + 0.4*Esp(i,j);
            
            
            end
        end
    end
    figure
    imshow([Amb Dif; Esp D]);
end    