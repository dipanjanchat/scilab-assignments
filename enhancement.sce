function result_enhance= brightness_enhance(img, factor1)
    result_enhance= img * factor1
    result_enhance= uint8(result_enhance)
endfunction

function result_suppress=brightness_suppress(img, factor2)
    result_suppress= img * factor2
    result_suppress= uint8(result_suppress)
endfunction

function result_contrast=contrast_manipulate(img,brightnessfactor,contrastfactor,midpoint)
    result_contrast= img * brightnessfactor
    result_contrast= contrastfactor * (result_contrast - midpoint) + midpoint
    result_contrast=min(max(result_contrast, 0), 255)
    result_contrast=uint8(result_contrast)
endfunction
    

img=imread("garden.jpeg")
img=double(img)

factor1=0.7
result_enhance= brightness_enhance(img, factor1)

factor2=1.4
result_suppress=brightness_suppress(img, factor2)

brightnessfactor=1.8
contrastfactor=1.6
midpoint=128
result_contrast=contrast_manipulate(img,brightnessfactor,contrastfactor,midpoint)

subplot(2,3,1), title("Original"), imshow(uint8(img))
subplot(2,3,2), title("Brightness Enhanced"), imshow(result_enhance)
subplot(2,3,3), title("Brightness Suppress"), imshow(result_suppress)
subplot(2,3,4), title("Contrast Manipulation"), imshow(result_contrast)
