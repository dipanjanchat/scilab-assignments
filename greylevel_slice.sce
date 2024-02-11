function res_with_bg = with_bg(input_image, lower_threshold, upper_threshold)
    [rows, cols] = size(input_image);
    res_with_bg = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            if input_image(i, j) >= lower_threshold && input_image(i, j) <= upper_threshold
                res_with_bg(i, j) = input_image(i, j);
            else
                res_with_bg(i, j) = 255; // Background value
            end
        end
    end
end

function res_without_bg = without_bg(input_image, lower_threshold, upper_threshold)
    [rows, cols] = size(input_image);
    res_without_bg = zeros(rows, cols);

    for i = 1:rows
        for j = 1:cols
            if input_image(i, j) >= lower_threshold && input_image(i, j) <= upper_threshold
                res_without_bg(i, j) = input_image(i, j);
            else
                res_without_bg(i, j) = 0; // Black as background
            end
        end
    end
end

// Example usage:
input_image = imread("C:\Users\Dipanjan\OneDrive\Pictures\images\mri.jpeg"); // Read your image here
lower_threshold = 100;
upper_threshold = 200;

subplot(1, 3, 1);
imshow(input_image);
title('Original Image');

subplot(1, 3, 2);
res_with_bg = with_bg(input_image, lower_threshold, upper_threshold);
imshow(uint8(res_with_bg)); // Convert to uint8 for display
title('With Background');

subplot(1, 3, 3);
res_without_bg = without_bg(input_image, lower_threshold, upper_threshold);
imshow(uint8(res_without_bg)); // Convert to uint8 for display
title('Without Background');
