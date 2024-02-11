clc();
function res = log_transform(img)
    doub = double(img);
    [m, n] = size(doub);    
    c = 255/log10(1+255);
    res = zeros(m, n);
    for i = 1:m
        for j = 1:n
            res(i, j) = c*log10(1 + doub(i, j));
        end
    end
end

img = imread("ayesa.jpeg");
res = log_transform(img);

subplot(1, 2, 1), imshow(img), title('Original');
subplot(1, 2, 2), imshow(uint8(res)), title('Log Transformation');
