  function [A B C D E F G H I J] = conica(x,y,z)
    n = size(x,2);
    P = [];
    for i = 1:n
       %A*x^2 + B*y^2 + C*z^2 + D*x*y + E*x*z + F*y*z + G*x + H*y + I*z + J = 0 
        P = [P; [x(i)^2, y(i)^2, z(i)^2, x(i)*y(i), x(i)*z(i), y(i)*z(i), x(i), y(i), z(i), 1]];
    end
    [u s v] = svd(P'*P);
    A = u(1,10); 
    B = u(2,10); 
    C = u(3,10); 
    D = u(4,10); 
    E = u(5,10); 
    F = u(6,10); 
    G = u(7,10);
    H = u(8,10);
    I = u(9,10);
    J = u(10,10);
end
    