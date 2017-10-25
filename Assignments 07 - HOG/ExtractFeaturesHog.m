function [featuresData] = ExtractFeaturesHog(imgData)
    img1D = imgData(:,1);
    img2D = reshape(img1D,28,28);
    featuresVector = extractHOGFeatures(img2D);
    nSize = length(featuresVector);
    nData = size(imgData,2);
    featuresData = zeros(nSize,nData);
    for i=1:nData
        img1D = imgData(:,i);
        img2D = reshape(img1D,28,28);
        featuresData(:,i) = extractHOGFeatures(img2D);
    end
end