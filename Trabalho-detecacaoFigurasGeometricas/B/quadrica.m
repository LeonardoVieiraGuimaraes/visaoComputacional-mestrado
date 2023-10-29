function quadrica(S)
    
    X = S(:,1);
    Y = S(:,2);
    Z = S(:,3);
    [A B C D E F G H I J] = conica2(X',Y',Z');
    %C = zeros(m,n,d);
    plotquadric(A,B,C,D,E,F,G,H,I,J);
    %for x = 1:m
    %    for y = 1:n
    %       for z = 1:d
    %            C(x,y,Z) =  A*x^2 + B*y^2 + C*z^2 + D*x*y + E*x*z + F*y*z + G*x + H*y + I*z + J 
    %        end
    %    end
    %end
    %imshow([S,(1-C)*255]);
end

    
    