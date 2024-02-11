//convert an image from : rgb->gray, gray->binary,rgb->binary,rgb->hsv,rgb->ycbcr
img = imread("image1.jpg");
gray=rgb2gray(img);                 //rgb to gray
bwbinary =im2bw(gray, 0.5);        //gray to binary
rgbbinary= im2bw(img, 0.5);               //rgb to binary
hsv=rgb2hsv(img);                   //rgb to hsv
ycbcr=rgb2ycbcr(img);              //rgb to ycbcr
rgb1=ycbcr2rgb(ycbcr);
rgb2=hsv2rgb(hsv);
//Display all images
subplot(2,4,1), imshow(img), title("Original image");
subplot(2,4,2), imshow(gray), title("Grayscale image");
subplot(2,4,3), imshow(bwbinary), title("Gray to Binary image");
subplot(2,4,4), imshow(rgbbinary), title("RGB to Binary image");
subplot(2,4,5), imshow(hsv), title("RGB to HSV image");
subplot(2,4,6), imshow(ycbcr),  title("RGB to YCbCr image");
subplot(2,4,7), imshow(rgb1),  title("YCbCr to RGB image");
subplot(2,4,8), imshow(rgb2),  title("HSV to RGB image");
