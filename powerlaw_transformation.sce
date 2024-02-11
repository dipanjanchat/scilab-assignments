function res= powerlaw(img, gamma_val)
    max_intensity=255
    LUT= max_intensity .* (([0:max_intensity] ./ max_intensity) .^gamma_val)
    LUT= floor(LUT)
    doub=double(img)+1;
    [m,n,o]= size(doub)
    for (i=1:m)
        for(j=1:n)
            for(k=1:o)
                res(i,j,k)=LUT(doub(i,j,k))
            end            
        end
    end
    res=uint8(res)
endfunction
img=imread("Eye.jpg")

gamma_val=0.5
transformed_img=powerlaw(img, gamma_val)

subplot(1,2,1),imshow(img),title("Original")
subplot(1,2,2),imshow(transformed_img),title("Powerlaw Transformation")
