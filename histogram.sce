clear plot_histogram;

function plot_histogram(gray_image, title_str)
    // Calculate the histogram
    hist_data = imhist(gray_image);
    
    // Plot the histogram
    plot(hist_data);
    
    // Set axis labels and title
    title(['Histogram of ' title_str]);
    xlabel('Pixel Intensity');
    ylabel('Frequency');
end

// Read the image
image = imread('photographer.jpg');

// Convert the image to grayscale
gray_image = rgb2gray(image);

// Display the original grayscale image and its histogram
subplot(2,2,1);
imshow(gray_image);
title('Original Grayscale Image');

subplot(2,2,2);
plot_histogram(gray_image, 'Original Gray Image');

// Equalize the histogram
eq_image = imhistequal(gray_image);

// Display the equalized grayscale image and its histogram
subplot(2,2,3);
imshow(eq_image);
title('Equalized Grayscale Image');

subplot(2,2,4);
plot_histogram(eq_image, 'Equalized Gray Image');
