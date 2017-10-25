function BaiTap15()
    %%  Load Data Train
    strData = 'train-images.idx3-ubyte'; 
    strDataLabel = 'train-labels.idx1-ubyte'; 
    [imgDataTrain,lblDataTrain] = loadData(strData,strDataLabel); 

    %% HOG Data Train
    featuresDataTrain = ExtractFeaturesHog(imgDataTrain);
    
    %% Build Model KNN
    Mdl = fitcknn(featuresDataTrain',lblDataTrain);
    
     %% Load Data Test
    strData = 't10k-images.idx3-ubyte'; 
    strDataLabel = 't10k-labels.idx1-ubyte'; 
    [imgDataTest,lblDataTest] = loadData(strData,strDataLabel); 
    
    %% Extract test features HOG
    featuresDataTest = ExtractFeaturesHog(imgDataTest);
    
    %% Result
    lblResult = predict(Mdl,featuresDataTest');
    nResult = (lblResult == lblDataTest);
    nCount =  sum(nResult);
    fprintf("\nSo luong mau dung : %d\n",nCount);
end