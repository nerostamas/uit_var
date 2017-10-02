function Recognition005_Digits()
    fprintf('\nLoading data training....\n');
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    fprintf('Loading Trainning Completed....\n');
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('Loading Test Data Completed.....\n');
    
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
    
    nTestImgs = size(imgTestAll,2);
    nNumber = randi([1,nTestImgs]);
    imgTest = imgTestAll(:,nNumber);
  
    lblPredictTest = predict(Mdl,imgTest');
  
    lblImageTest = lblTestAll(nNumber);
    
    figure;
    img2D = reshape(imgTest,28,28);
    
    imshow(img2D);
    strLabelImg = 'Ban Dau ';
    strLabelImg = [strLabelImg, num2str(lblTestAll(nNumber)), '.'];
    strLabelImg = [strLabelImg, ' Du doan: '];
    strLabelImg = [strLabelImg, num2str(lblPredictTest),'.'];
    if(lblPredictTest==lblImageTest)
        strLabelImg = [strLabelImg,' Ket qua dung.'];
    else
        strLabelImg = [strLabelImg,' Ket qua sai.'];
    end
    title(strLabelImg);
end