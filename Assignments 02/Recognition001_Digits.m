function Recognition001_Digits()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading Completed....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    labelTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished');
end