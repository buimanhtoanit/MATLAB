function showImageNTest(n)
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    figure;
    img = imgTestAll(:,n);
    img2D = reshape(img,28,28);
    strLabelmage = num2str(lblTestAll(n));
    imshow(img2D);
    title(strLabelmage);
end