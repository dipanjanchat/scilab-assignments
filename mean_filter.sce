figure;
function result=meanfilt(img,windowsize)
    [row,col]=size(img);
    result=zeros(size(img));
    halfwindow=floor(windowsize/2);
    for i=1+halfwindow : row-halfwindow
        for j= 1+halfwindow : col-halfwindow
            window= img((i-halfwindow : i+halfwindow), (j-halfwindow : j+halfwindow));
            result(i,j)=mean(window(:));
        end
    end
endfunction

img=imread("ctscan.jpeg");
img=imnoise(img,'salt and pepper',0.1);
img=double(img);
windowsize=3
result=meanfilt(img,windowsize);
subplot(1,2,1), imshow(uint8(img));
subplot(1,2,2), imshow(uint8(result));
