%{
Function get wrong predict of n
arrayImagesTrain: array of Images Trainning
arrayLabelsTrain: array of Labels Training
arrayImagesTest: array of Images Test
arrayLabelsTest: arrat of Labels Test
n : the label you want to get result
%}
function SummaryWrongPredict(arrayImagesTrain,arrayLabelsTrain,arrayImagesTest,arrayLabelsTest,n)
    %create model train
    Mdl = fitcknn(arrayImagesTrain',arrayLabelsTrain);
    i = 0;
    count = 0;
    while(i<length(arrayLabelsTest))
        i = i+1;
        if(arrayLabelsTest(i) ~= n)
            continue;
        end
        imgTest = arrayImagesTest(:,i);
        lblPredictTest = predict(Mdl,imgTest');
        if(lblPredictTest ~= arrayLabelsTest(i))
            count = count +1;
            fprintf('%d : index %d\n',count,i);
        end
    end
    fprintf('Predict Wrong For %d: %d\n',n,count);
end