function [S, W] = neighbors(S,W,i,j,r)

    [l,c] = size(S);
    
    if (S(i,j) ==1) 
        S(i,j) = r;
        [S,W] = neighbors(S,W,min(i+1,l),j,r);
        [S,W] = neighbors(S,W,i,min(j+1,c),r);
        [S,W] = neighbors(S,W,max(1,i-1),j,r);
        [S,W] = neighbors(S,W,i,max(1,j-1),r);
        W = [min(j,W(1)) min(i,W(2)) max(j,W(3)) max(i,W(4))]; 
    end
end