%{
Function to export sumary of images follow labels
arrLabels: Input array of Labels form MNIST
%}
function SummaryImagesFollowLabels(arrLabels)
    arrLabelsUnique = unique(arrLabels); %get Uniqe number
    count=hist(arrLabels,arrLabelsUnique);  %get count of each unique in array
    i = 1;
    nSummary = zeros(2,10); %create array 2x10
    while (i <= length(arrLabelsUnique))
       nSummary(1,i) = arrLabelsUnique(i);
       nSummary(2,i) = count(i);
       i = i+1;
    end
    disp(nSummary);
    strFileName = 'exportTest.csv';
    csvwrite(strFileName,nSummary); %export to csv file
end