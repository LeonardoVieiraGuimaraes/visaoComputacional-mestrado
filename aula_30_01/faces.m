for i = 1:40
    e = reshape(U(:,i),112,92);
    e = e*min(min(e));
    E(:,:,i) = e/max(max(e));
end
    
for i = 1:40
    EF(:,:,i) = reshape(U(:,i),112,92);
end
f = zeros(112,92);
for i = 1:40
    f = f+F(i,3)*EF(:,:,i);
end

imshow(f + reshape(med,112,92))
