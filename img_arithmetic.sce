// Load the two images
img1 = imread('Eye.jpg');
img2 = imread('pattern.jpg');

// Resize the images to the same size
new_size = max(size(img1), size(img2));
img1= imresize(img1, new_size(1:2));  // Use new_size(1:2) to get the dimensions
img2 = imresize(img2, new_size(1:2));  // Use new_size(1:2) to get the dimensions

subplot(3, 2, 1); imshow(uint8(img1)); title(' Image 1', 'font_size',6.5, 'font_style','helvetica bold');
subplot(3, 2, 2); imshow(uint8(img2)); title('Image 2', 'font_size',6.5, 'font_style','helvetica bold');

addition_result = imadd(img1, img2);    // Addition
subtraction_result = imabsdiff(img1, img2);         // Subtraction
multiplication_result = immultiply(img1, img2);       // Multiplication
division_result = imdivide(img1, 5);            // Division 

// Display the images and the results
subplot(3, 2, 3); imshow(uint8(addition_result)); title('Image 1+Image 2', 'font_size', 4.5, 'font_style', 'times bold italic');
subplot(3, 2, 4); imshow(uint8(subtraction_result)); title('Image 1 - Image 2', 'font_size', 4.5, 'font_style','times bold italic');
subplot(3, 2, 5); imshow(uint8(multiplication_result)); title('Image 1 * Image 1', 'font_size', 4.5, 'font_style','times bold italic');
subplot(3, 2, 6); imshow(uint8(division_result)); title('Image 1 / Image 1', 'font_size',.5, 'font_style','times bold italic');
