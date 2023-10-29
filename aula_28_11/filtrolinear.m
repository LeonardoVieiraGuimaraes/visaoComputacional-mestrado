function IA = filtrolinear(I,A)
%Filtro depende da mascara para termos diferentes tipos de filtro. 
%Passa Baixa: Filtram altas frequ�ncias (media)
%Passa Alta: Filtragem de baixas frequ�ncias (laplaciana)
%Passa 
    [l,c] = size(I);
    n = size(A,1);
    m =floor(n/2);
    
    IA = zeros(l,c);
    I = double(I);
    for i = (m+1):(l-m)
        for j = (m+1):(c-m)
            for h = -m:m
                for k = -m:m
                    IA(i,j) = IA(i,j) + A(h+m+1,k+m+1)*I(i-h,j-k);
                end
            end
        end
    end
    if (sum(sum(A))>0)
        IA = IA/sum(sum(A));
    end
    %IA = uint8(IA); desconsidera o valores negativos. 
end