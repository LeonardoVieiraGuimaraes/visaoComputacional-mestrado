%Usando transformada de fourier sem otimização outra função otimizada no
%matlab é fft2(A), transofrmada rapida de fourier 
%F = fft2(A), transformada rápida de fourier em 2D;
%B = T(F), qualquer modificação, geralmente suprimindo frequências
%altas, baixas ou faixas;
%C = ifft2(B).

function F = DFT2D(I,s)
    I = double(I);
    [m,n] = size(I);
    F = double(zeros(m,n));
    
    for w = 0:(m-1)
        w
        for z = 0:(n-1)
            for x = 0:(m-1)
                for y = 0:(n-1)
                    F(w+1, z+1) = F(w+1,z+1) + 1/sqrt(m*n)*I(x+1,y+1)*exp(-s*2i*pi*(w*x/n + z*y/m));
                end
            end
        end
    end
end