function mtestdata()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading data testing....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished All\n');
    
    subplot(2,5,1);
    img = imgTrainAll(:,1993);
    img2D = reshape(img,28,28);
    imshow(img2D);
    [featuresVector,visualHog] = extractHOGFeatures(img2D,'CellSize',[8 8]);
    subplot(2,5,2);
    plot(visualHog);
    subplot(2,5,3);
    hist(featuresVector);
    
    subplot(2,5,4);
    img = imgTrainAll(:,2003);
    img2D = reshape(img,28,28);
    imshow(img2D);
    [featuresVector,visualHog] = extractHOGFeatures(img2D,'CellSize',[8 8]);
    subplot(2,5,5);
    plot(visualHog);

end