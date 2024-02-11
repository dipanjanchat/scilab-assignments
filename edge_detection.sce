img1 = imread("D.jpg");
img2 = imread("sherlock.jpeg");

subplot(4,2,1), title("Original"), imshow(img1);
subplot(4,2,2), title("Original"), imshow(img2);

im1 = im2bw(img1, 0.6);
im2 = im2bw(img2, 0.4);
im1=double(im1)
im2=double(im2)

mask_roberts1 = [-1 0; 0 1];
mask_roberts2 = [0 -1; 1 0];
r1 = conv2(mask_roberts1, im1);
r2 = conv2(mask_roberts2, im2);

mask_sobel1 = [-1 0 1; -2 0 2; -1 0 1];
mask_sobel2 = [-1 -2 -1; 0 0 0; 1 2 1];
s1 = conv2(mask_sobel1, im1);
s2 = conv2(mask_sobel2, im2);

mask_prewitt1 = [-1 0 1; -1 0 1; -1 0 1];
mask_prewitt2 = [1 1 1; 0 0 0; -1 -1 -1];
p1 = conv2(mask_prewitt1, im1);
p2 = conv2(mask_prewitt2, im2);

subplot(4,2,3), title("Roberts"), imshow(uint8(r1))
subplot(4,2,4), title("Roberts"), imshow(uint8(r2));
subplot(4,2,5), title("Sobel"), imshow(uint8(s1))
subplot(4,2,6), title("Sobel"), imshow(uint8(s2))
subplot(4,2,7), title("Prewitt"), imshow(uint8(p1))
subplot(4,2,8), title("Prewitt"), imshow(uint8(p2))
