%{
Function show image and label in in Mathlab
arrImagesTrain : Array of Images Input
arrLabelTrain : Array of Labels Input
n : The order of Image you want to show
%}
function ShowImagen(arrImagesTrain,arrLabelTrain,n)
    lblShow = arrLabelTrain(n);
    ImgShow = arrImagesTrain(:,n);
    img2D = reshape(ImgShow,28,28);
    strlabel = num2str(lblShow);
    figure;
    imshow(img2D);
    title(strlabel);
end