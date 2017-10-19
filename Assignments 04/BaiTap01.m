function BaiTap01()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading data testing....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Finished All\n');
    
    nBin = 256;
    nNumTrainImages = size(imgTrainAll,2); 
    imgTrainAll_hist=zeros(nBin,nNumTrainImages); 
    for i = 1:nNumTrainImages
         imgTrainAll_hist(:,i) = imhist(imgTrainAll(:,i),nBin);
    end
    Mdl = fitcknn(imgTrainAll_hist',lblTrainAll);
    
    nNumTestImages = size(imgTestAll,2); 
    imgTestAll_hist = zeros(nBin,nNumTestImages); 
    for i = 1:nNumTestImages 
        imgTestAll_hist(:,i) = imhist(imgTestAll(:,i),nBin);
    end
    lblResult = predict(Mdl,imgTestAll_hist');
    nResult = (lblResult == lblTestAll); 
    nCount = sum(nResult); 
    fprintf('\nSo luong mau dung: %d\n',nCount); 
end