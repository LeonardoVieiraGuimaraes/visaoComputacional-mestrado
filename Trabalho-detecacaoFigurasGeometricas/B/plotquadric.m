function plotquadric(A,B,C,D,E,F,G,H,I,J)

gv = linspace(-40,40,50); % adjust for appropriate domain
[x y z]=meshgrid(gv, gv, gv);
Q = A*x.^2 + B*y.^2 + C*z.^2 + D*x.*y + E*x.*z + F*y.*z + G*x + H*y + I*z + J;
isosurface(x, y, z, Q, 0)
end



