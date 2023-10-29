function [a b r1 r2] = elipse(S)
    [l c] = size(S);
    P = [];
    for x = 1:l
        for y = 1:c
            if (S(x,y)>0)
                P = [P;[x^2, y^2 , x*y, x, y, 1]];
            end
        end
    end
    [u s v] = svd(P'*P);
    A = u(1,6); B = u(2,6); C = u(3,6); D = u(4,6); E = u(5,6); F = u(6,6);
    
    a = -D/(2*A);
    b = -E/(2*B);
    r1 = sqrt((a^2*A + b^2*B - F)/A);
    r2 = sqrt((a^2*A + b^2*B - F)/B);
    
    H = S*0;
    for t=0:0.01:2*pi
        x = round(a + sin(t)*r1);
        y = round(b + cos(t)*r2);
        H(x,y) = 255; 
    end
    
    imshow([S ones(l,10)*200 H]);
end