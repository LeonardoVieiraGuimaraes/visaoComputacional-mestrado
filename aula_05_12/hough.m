function A = hough(E, R, T)
    [M N] = size(E);
    d = floor(sqrt(M^2+N^2));
    dr = 2*d/R;
    dt = pi/R;
    
    A = zeros(R,T);
    
    for i = 1:M
        for j = 1:N
            for t = 1:T
                if (E(i,j)>0)gh
                    r = i*cos(t*dt) + j*sin(t*dt);
                    r = round((r+d)/dr) +1;
                    if (r>0 & r<R)
                        A(r,t) = A(r,t) + 1;
                    end
                end
            end
        end
    end
    
    C = showcurve(E,A,dr,dt,9);
end
    