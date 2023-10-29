function A = houghcirculo(E,r_min,r_max)
    [M N] = size(E);
    A = zeros(M,N,min(M,N));
    for x0 = 1:M
        for y0 = 1:N
            if (E(x0,y0)>0)
            for r=r_min:r_max
                for theta=0:360
                    xc=round(x0 + cos(theta)*r);
                    yc=round(y0 + sin(theta)*r);
                    if (r>0 & r<=min(M,N) & xc>0 & xc<=M & yc>0 & yc<=N)  
                        A(xc,yc,r) = A(xc,yc,r) + 1;
                    end
                end
            end
            end  
        end
    end
    for n = 1:10
    [m n d] = size(A);
    EE = zeros(M,N);
    for i = 1:m
        for j=1:n
            [B(i,j) m(i,j)] = max(A(i,j,:));
        end
    end
    [BB k] = max(B);
    [BBB cx] = max(BB);
    cy = k(cx);
    theta = 0:360; 
    r = m(cy,cx);
    x = round(cx - cos(theta)*r);
    y = round(cy - sin(theta)*r);
    for i = 1:length(x)
        if (x(i)>0 & y(i)>0 & x(i)<=M & y(i)<=N)
            E(y(i),x(i))=255;
        end
    end
   
    A(cy,cx,r) = 0;
    end
     imshow(E);
end
    