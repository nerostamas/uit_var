%{
Function get confusion matrix
arrayImagesTrain: array of Images Trainning
arrayLabelsTrain: array of Labels Training
arrayImagesTest: array of Images Test
arrayLabelsTest: arrat of Labels Test
%}
function ConfusionMatrix(arrayImagesTrain,arrayLabelsTrain,arrayImagesTest,arrayLabelsTest)
    %create model train
    Mdl = fitcknn(arrayImagesTrain',arrayLabelsTrain);
    i = 1;
    arrLabelsUnique = unique(arrayLabelsTrain); %get Uniqe number
    dist(arrLabelsUnique);
    nSummary = zeros(2,10); %create array 2x10
    
     while (i <= length(arrLabelsUnique))
       nSummary(1,i) = arrLabelsUnique(i);
       i = i+1;
     end

    disp(nSummary);
    i = 0;

    while(i<length(arrayLabelsTest))
        i = i+1;
        imgTest = arrayImagesTest(:,i);
        lblTest = arrayLabelsTest(i);
        lblPredictTest = predict(Mdl,imgTest');
        if(lblPredictTest ~= lblTest)
            nSummary(2,lblTest+1) = nSummary(2,lblTest+1) + 1;
            fprintf('%d : index %d\n',lblTest,i);
            disp(nSummary);
        end
    end
end