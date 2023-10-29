function [A B C D E F] = conica(x,y)
    n = size(x,2);
    P = [];
    for i = 1:n
        P = [P; [x(i)^2, y(i)^2, x(i)*y(i), x(i), y(i), 1]];
    end
    
    [u s v] = svd(P'*P);
    A = u(1,6); B = u(2,6); C = u(3,6); D = u(4,6); E = u(5,6); F = u(6,6);
end
    