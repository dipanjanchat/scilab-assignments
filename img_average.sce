function result=overlayImages(image1, image2)    
    // Convert images to double
    doub1 = double(a);
    doub2 = double(b);
    
    // Resize the second image to match dimensions of the first image
    [m, n] = size(doub1);
    doub2 = imresize(doub2, [m, n]);
    
    // Calculate overlapped image
    result = (doub1 + doub2) / 2;
    result = uint8(result);
endfunction

a = imread("nostalgia.jpg");
b = imread("img2.jpg");
// Call the function with the image paths
result=overlayImages(a,b);

figure;
subplot(2, 2, 1);imshow(a); title('First Image');
subplot(2, 2, 2);imshow(b);title('Second Image');
subplot(2, 2, 3);imshow(result);title('Overlapped Image');
