//image rotation

function rotate = rotate(image,angle)
    
                                                                                //rotate clockwise
    clk_rotate=imrotate(image,- angle);
    
                                                                             //rotate anti-clock wise
    anticlk_rotate=imrotate(image,angle);
                                                                            //display the images
    subplot(1,3,2), imshow(clk_rotate), title("Clockwise rotated image");
    subplot(1,3,3), imshow(anticlk_rotate), title("Anti-clockwise rotated image");
endfunction
                                                                           //read the image and call the function
image=imread("wolfking.jpeg");
subplot(1,3,1), imshow(image), title("original image");
rotate(image,90);
