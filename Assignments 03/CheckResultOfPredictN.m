%{
Function check result from predict of image has order is n
arrayImagesTrain: array of Images Trainning
arrayLabelsTrain: array of Labels Training
arrayImagesTest: array of Images Test
arrayLabelsTest: arrat of Labels Test
n : the order of image you want to test
%}
function CheckResultOfPredictN(arrayImagesTrain,arrayLabelsTrain,arrayImagesTest,arrayLabelsTest,n)

    %create model train
    if(n < 1 || n > 10000)
        fprintf('N is out of array ! exiting...\n');
        return;
    end
    Mdl = fitcknn(arrayImagesTrain',arrayLabelsTrain);
    imgTest = arrayImagesTest(:,n);
    lblPredictTest = predict(Mdl,imgTest');
    %ShowImagen(arrayImagesTest,arrayLabelsTest,n); %show image from Test and label
    strTitle = 'Data Test: ';
    strTitle = [strTitle,num2str(arrayLabelsTest(n)),' - Predict: ', num2str(lblPredictTest)];
    fprintf('Label predict : %d\n',lblPredictTest);
    if(lblPredictTest == arrayLabelsTest(n))
        fprintf('The result is CORRECT !\n');
        strTitle = [strTitle, ' - Result: CORRECT'];
    else
        fprintf('The result is INCORRECT !\n');
        strTitle = [strTitle, ' - Result: INCORRECT'];
    end
    
    figure;
    img2D = reshape(imgTest,28,28);
    imshow(img2D);
    title(strTitle);
    
end