function TestData()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading data testing....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished All\n');
    %ShowImagen(imgTestAll,lblTestAll,n);
    %SummaryImagesFollowLabels(lblTestAll);
    %CheckResultOfPredictN(imgTrainAll,lblTrainAll,imgTestAll,lblTestAll,900);
    %SummaryWrongPredict(imgTrainAll,lblTrainAll,imgTestAll,lblTestAll,n);
    ConfusionMatrix(imgTrainAll,lblTrainAll,imgTestAll,lblTestAll);
    %PredictImagesN(1000);
    
end