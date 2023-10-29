A4=imread('arvore4.png');
C4=imread('carros4.png');
P4=imread('pessoas4.png');

SA4 = detectSURFFeatures(A4,'MetricThreshold',1000);
SC4 = detectSURFFeatures(C4,'MetricThreshold',1000);
SP4 = detectSURFFeatures(P4,'MetricThreshold',1000);

FA4 = extractFeatures(A4,SA4);
FC4 = extractFeatures(C4,SC4);
FP4 = extractFeatures(P4,SP4);

C=zeros(3,3);

HA=zeros(1,B);
for i=1:size(FA4)
    d=9999; k=0;
    for j=1:B
        tmp=norm(FA4(i,:)-centers(j,:),2);
        if (tmp<d); d=tmp; k=j; end;
    end
    HA(k)=HA(k)+1;
end
HA=HA/sum(HA);
d=9999; k=0;
for i=1:9
    tmp=norm(H(i,:)-HA,2);
    if (tmp<d); d=tmp; k=i; end;
end
C(1,ceil(k/3))=1;

HC=zeros(1,B);
for i=1:size(FC4)
    d=9999; k=0;
    for j=1:B
        tmp=norm(FC4(i,:)-centers(j,:),2);
        if (tmp<d); d=tmp; k=j; end;
    end
    HC(k)=HC(k)+1;
end
HC=HC/sum(HC);
d=9999; k=0;
for i=1:9
    tmp=norm(H(i,:)-HC,2);
    if (tmp<d); d=tmp; k=i; end;
end
C(2,ceil(k/3))=1;

HP=zeros(1,B);
for i=1:size(FP4)
    d=9999; k=0;
    for j=1:B
        tmp=norm(FP4(i,:)-centers(j,:),2);
        if (tmp<d); d=tmp; k=j; end;
    end
    HP(k)=HP(k)+1;
end
HP=HP/sum(HP);
d=9999; k=0;
for i=1:9
    tmp=norm(H(i,:)-HP,2);
    if (tmp<d); d=tmp; k=i; end;
end
C(3,ceil(k/3))=1;


subplot(3,4,1)
bar(H(1,:));

subplot(3,4,2)
bar(H(2,:));

subplot(3,4,3)
bar(H(3,:));

subplot(3,4,4)
bar(HA);

subplot(3,4,5)
bar(H(4,:));

subplot(3,4,6)
bar(H(5,:));

subplot(3,4,7)
bar(H(6,:));

subplot(3,4,8)
bar(HC);

subplot(3,4,9)
bar(H(7,:));

subplot(3,4,10)
bar(H(8,:));

subplot(3,4,11)
bar(H(9,:));

subplot(3,4,12)
bar(HP);

