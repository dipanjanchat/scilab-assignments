function result = piecewise_linear_transform(img, control_points, output_values)
    result = interp1(control_points, output_values, double(img));
end

img = imread('city.jpeg');

if ndims(img) == 3
    img = rgb2gray(img);
end

// Control points for piecewise linear transformation
control_points = [0, 50, 100, 150, 200, 255]; // Input intensity values
output_values = [0, 20, 30, 120, 180, 255]; // Corresponding output values

// Apply piecewise linear transform
result = piecewise_linear_transform(img, control_points, output_values);

clf;

subplot(1, 2, 1);imshow(img);title('Input Image');
subplot(1, 2, 2);imshow(uint8(result));title('Output Image');
