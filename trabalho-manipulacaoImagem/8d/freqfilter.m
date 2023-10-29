function [F S] = freqfilter(A,minf, maxf)
    
    [l,c] = size(A);
 
    F = fft2(A); % tranformada de fourier de A 
    F = fftshift(F);
    
    for i = 1:l
        for j= 1:c 
            r = sqrt((l/2 - i)^2 + (c/2-j)^2);
            if ((r>minf) & (r<maxf))
                F(i,j) = 0; %elimina frequências 
            end
        end
    end
    IF = ifft2(F); %tranforma inversa 
    S = (log(abs(F) + 1)); % Mostra o espectro
    S = S/max(max(S))*255; %Mostra a trasnformada
    
    IF = abs(IF);
    %IF = fftshift(IF);
    
    imshow([A S IF]);
  
end