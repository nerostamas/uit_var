function Recognition002_Digits()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading Completed....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    labelTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished');
    
    nTrainImages = size(imgTrainAll,2);
    nTrainLabels = size(lblTrainAll,1);
    fprintf('\n Number of train images: %d',nTrainImages);
    fprintf('\n Number of train labels: %d',nTrainLabels);
    
    nTestImages = size(imgTestAll,2);
    nTestLabels = size(labelTestAll,1);
    fprintf('\n Number of test images: %d',nTestImages);
    fprintf('\n Number of test labels: %d',nTestLabels);
end