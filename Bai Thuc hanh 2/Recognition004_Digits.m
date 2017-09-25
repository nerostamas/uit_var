function Recognition004_Digits()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading Completed....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    labelTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished');
    
    nTrainImages = size(imgTrainAll,2);
    nTestImages = size(imgTestAll,2);
    
    nRanTrain = randi([1,nTrainImages]);
    nRanTest = randi([1,nTestImages]);
    
    figure;
    imgTrain = imgTrainAll(:,nRanTrain);
    img2DTrain = reshape(imgTrain,28,28);
    lblTrain = num2str(lblTrainAll(nRanTrain));
    imshow(img2DTrain);
    title(lblTrain);
    
    figure;
    imgTest = imgTestAll(:,nRanTest);
    img2DTest = reshape(imgTest,28,28);
    lblTest = num2str(labelTestAll(nRanTest));
    imshow(img2DTest);
    title(lblTest);
  
end