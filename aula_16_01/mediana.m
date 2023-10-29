


for i = 1:5
    Disp = disparidade('left.png', 'right.png',i);
    D(:,:,i) = Disp;
    i
end
    
[m n d] = size(D);

for i = 1:m
    for j=1:n
       A(i,j) = median(D(i,j,:));
    end
end

 imshow(A/max(max(A)))