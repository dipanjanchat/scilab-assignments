function res=avg(a,b)
    adoub=double(a);
    bdoub=double(b);
    [m,n]=size(adoub);
    bdouble=imresize(bdoub,[m,n]); //resizing the second image
    res=zeros(m,n);
    for i=1:m
        for j=1:n
            res(i,j)=(adoub(i,j)+bdoub(i,j))/2;
        end
    end
    res=uint8(res);
    clf;
endfunction

a=imread("Nostalgia.jpg")
b=imread("aristotol.jpeg")
res=avg(a,b)
subplot(1,3,1),imshow(a)
subplot(1,3,2),imshow(b)
subplot(1,3,3),imshow(res)
