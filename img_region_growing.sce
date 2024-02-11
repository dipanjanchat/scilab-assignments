function segmented_image = region_growing(image, seed, threshold)
    // Function to perform region growing in image processing
    
    [rows, cols] = size(image);
    
    // Initialize segmented image
    segmented_image = zeros(rows, cols);
    
    // Initialize a stack for seed points
    stack = zeros(2, rows * cols);
    top = 1;
    
    // Push seed point onto stack
    stack(:, top) = seed;
    
    // Define 8-connected neighbors
    neighbors = [-1, -1; -1, 0; -1, 1; 0, -1; 0, 1; 1, -1; 1, 0; 1, 1];
    
    while top > 0
        current_point = stack(:, top);
        top = top - 1;
        if current_point(1) >= 1 && current_point(1) <= rows && current_point(2) >= 1 && current_point(2) <= cols                   // Check if the current point is within the image boundaries
            if segmented_image(current_point(1), current_point(2)) == 0         // Check if the pixel is not already part of the segmented region
                intensity_difference = abs(double(image(current_point(1), current_point(2))) - double(image(seed(1), seed(2))));                // Check the intensity difference between the current pixel and the seed pixel              
                if intensity_difference <= threshold             // If the difference is below the threshold, add the pixel to the region
                    segmented_image(current_point(1), current_point(2)) = 1;                    
                    // Push 8-connected neighbors onto the stack
                    for i = 1:8
                        neighbor = current_point + neighbors(i, :).';
                        stack(:, top + 1) = neighbor;
                        top = top + 1;
                    end
                end
            end
        end
    end
endfunction
img = imread('sherlock.jpeg');
figure;
seed_point = [100, 100];
threshold_value = 20;

segmented_result = region_growing(img, seed_point, threshold_value);

// Display the segmented result or perform further analysis
subplot(1,2,1), imshow(img), title("Original Image","font_size",5.5, "font_style","times bold italic");
subplot(1,2,2), imshow(segmented_result), title("Region Growing",'font_size',5.5,'font_style',"times bold italic");
