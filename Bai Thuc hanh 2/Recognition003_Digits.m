function Recognition003_Digits
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading Completed....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    labelTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished');
    
    figure;
    img = imgTrainAll(:,1);
    img2D = reshape(img,28,28);
    strlabelImage = num2str(lblTrainAll(1));
    imshow(img2D)
    title(strlabelImage);
    
    figure;
    nTrainImages = size(imgTrainAll,2);
    imglast = imgTrainAll(:,nTrainImages);
    img2D2 = reshape(imglast,28,28);
    strlabelImage = num2str(lblTrainAll(nTrainImages));
    imshow(img2D2)
    title(strlabelImage);
end