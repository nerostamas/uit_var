%{
Function to predict an image
Input: the ordoer of images in Test List
%}
function PredictImagesN(n)
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading data testing....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished All\n');
    CheckResultOfPredictN(imgTrainAll,lblTrainAll,imgTestAll,lblTestAll,n);
end