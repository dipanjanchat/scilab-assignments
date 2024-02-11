figure;
clear all;
function maxres=maxfilt(img,windowsize)
    se=ones(windowsize,windowsize)
    maxres=imdilate(img,se)
endfunction

function minres=minfilt(img,windowsize)
    se=ones(windowsize,windowsize)
    minres=imerode(img,se)
endfunction

img=imread("ctscan.jpeg");
img=double(img);
windowsize=5
maxres=maxfilt(img,windowsize);
minres=minfilt(img,windowsize);
subplot(1,3,1), imshow(uint8(img));
subplot(1,3,2), imshow(uint8(maxres));
subplot(1,3,3), imshow(uint8(minres));
