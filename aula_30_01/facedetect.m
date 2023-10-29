function [S B] = facedetect(I)

    [l,c,n] = size(I);
    I = double(I);
    Cr = 0.439*I(:,:,1) - 0.368*I(:,:,2) - 0.071*I(:,:,3) +0.5;
    
    S = zeros(l,c);
    
    [L,C] = find(10<Cr & Cr<45);
    for i = 1:size(L)
        S(L(i),C(i)) = 1;
    end
    
    B = S;
    r = 2;
    set(0,'RecursionLimit',100000);
    BB = [];
    for i = 1:l
        for j=1:c
            W = [j i j i];
            if(S(i,j)==1)
                [S, W] = neighbors(S, W, i,j,r);
                r = r+1;
                BB = [BB; W];
            end
        end
    end
   
    w = BB(:,3) - BB(:,1);
    h = BB(:,4) - BB(:,2);
    
    for i = 1:size(BB,1)
        if (h(i) > 20 & w(i)>20)
            if ((h(i)/w(i))<2 & (h(i)/w(i))>0.8)
                I(BB(i,2), BB(i,1):BB(i,3),:)=255;
                I(BB(i,4), BB(i,1):BB(i,3),:)=255;
                I(BB(i,2):BB(i,4), BB(i,1),:)=255;
                I(BB(i,2):BB(i,4), BB(i,3),:)=255;
            end
        end
    end
    I = uint8(I);
    imshow(I);
end

    