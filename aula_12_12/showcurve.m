function [A E]=showcurve(E,A,dr,dt,n);

EE=E;
AA=A;
[M,N]=size(E);
[R,T]=size(A);

for i=1:n

  [m p]=max(A);
  [n q]=max(m);

  p=p(q);

  r=p*dr-dr*R/2;
  t=q*dt

  a=-cos(t)/sin(t);
  b=r/sin(t);

  for x=1:M
    y=floor(a*x+b)
    if (y>0 & y<N)
     E(x:x+1,y:y+1,2)=255;
     E(x:x+1,y:y+1,3)=255;
    end
  end

  for y=1:N
    x=floor((y-b)/a);
    if (x>0 & x<M)
     E(x:x+1,y:y+1,2)=255;
     E(x:x+1,y:y+1,3)=255;
    end
  end

  if (p-5>0 & q-5>0)
    A(p-5:p+5,q-5:q+5)=0;
  end
end

subplot(1,3,1);	
imshow(EE);
subplot(1,3,2);	
imshow(AA/max(max(AA)));
subplot(1,3,3);	
imshow(E);    

