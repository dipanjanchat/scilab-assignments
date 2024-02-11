function res = threshold(img, thresh)
    [m, n, o] = size(img);
    res = zeros(m, n, o);  // Create an empty array for the segmented image
    for i = 1:m
        for j = 1:n
            for k = 1:o
                if img(i, j, k) < thresh
                    res(i, j, k) = N;
                else
                    res(i, j, k) = M;
                end
            end
        end
    end
endfunction

img = imread("Nostalgia.jpg");
M=input("enter maximum threshold value: ")
N=input("enter minimum threshold value: ")
thresh= 0.6 * (M+N)

res = threshold(img, thresh);

subplot(1, 2, 1), title("Original Image"), imshow(img);
subplot(1, 2, 2), title("Segmented Image"), imshow(res);
