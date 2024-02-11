rgb=imread("rgb.jpeg")                                  //read the image
figure

//plot original rgb image
subplot(2,2,1),imshow(rgb),title("Original RGB Image","font_style","times italic","font_size","4.5")

//plot red seperated image
red=rgb
red(:, :, 2)=0
red(:, :, 3)=0
subplot(2,2,2),imshow(red),title("Red Image","font_style","times italic","font_size","4.5","color","red")

//plot green seperated image
green=rgb
green(:, :, 1)=0
green(:, :, 3)=0
subplot(2,2,3),imshow(green),title("Green Image","font_style","times italic","font_size","4.5","color","green")

//plot blue seperated image
blue=rgb
blue(:, :, 1)=0
blue(:, :, 2)=0
subplot(2,2,4),imshow(blue),title("Blue Image","font_style","times italic","font_size","4.5","color","blue")
