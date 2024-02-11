a=imread("princess.jpeg")
doub=double(a)
[m,n]=size(doub)
for (i=1:m)
    for(j=1:n)
        res(i,j)=255-doub(i,j)
        end
end
res=uint8(res)
subplot(1,2,1),imshow(a)
subplot(1,2,2),imshow(res)
