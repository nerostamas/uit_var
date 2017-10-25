function BaiTap14()
    %%  Load Data Train
    strData = 'train-images.idx3-ubyte'; 
    strDataLabel = 'train-labels.idx1-ubyte'; 
    [imgDataTrain,lblDataTrain] = loadData(strData,strDataLabel); 
    
    %% Extract HOG Features
    img1D = imgDataTrain(:,1);
    img2D = reshape(img1D,28,28);
    featuresVector = extractHOGFeatures(img2D);
    
    nTrainData = size(imgDataTrain,2);
    nSize = length(featuresVector);
    featuresDataTrain = zeros(nSize,nTrainData);
    for i = 1:nTrainData
        img1D = imgDataTrain(:,i);
        img2D = reshape(img1D,28,28);
        featuresDataTrain(:,i) = extractHOGFeatures(img2D);
    end
    
    %% Build Model
    Mdl = fitcknn(featuresDataTrain',lblDataTrain);
    
    %% Load Data Test
    strData = 't10k-images.idx3-ubyte'; 
    strDataLabel = 't10k-labels.idx1-ubyte'; 
    [imgDataTest,lblDataTest] = loadData(strData,strDataLabel); 
    
    %% Build data test HOG features
    img1D = imgDataTest(:,1);
    img2D = reshape(img1D,28,28);
    featuresVector = extractHOGFeatures(img2D);
    nDataTest = size(imgDataTest,2);
    nSize = length(featuresVector);
    
    featuresDataTest = zeros(nSize,nDataTest);
    for i=1:nDataTest
        img1D = imgDataTest(:,i);
        img2D = reshape(img1D,28,28);
        featuresDataTest(:,i) = extractHOGFeatures(img2D);
    end
    
    %% Predict data
    lblResult = predict(Mdl,featuresDataTest');
    nResult = (lblResult == lblDataTest);
    nCount = sum(nResult);
    fprintf("\nSo luong mau dung: %d\n",nCount);
end