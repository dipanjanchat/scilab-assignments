baboon = imread('baboon.png');
man = imread('man.jpg');
baboon_gray=rgb2gray(baboon);
man_gray=rgb2gray(man);

baboon_resize=imresize(baboon_gray , [256, 256]);
man_resize=imresize(man_gray , [256, 256]);

left_half = baboon_resize(:, 1:128);
right_half = man_resize(:, 129:256);

J = [left_half , right_half];

figure;
subplot(2,2,1), imshow(baboon_gray),title("Image 1",'font_size', 5.5, 'font_style', 'times bold italic');
subplot(2,2,2), imshow(man_gray),title("Image 2",'font_size', 5.5, 'font_style', 'times bold italic');
subplot(2,2,3), imshow(J),title("Combined Image",'font_size', 5.5, 'font_style', 'times bold italic');
