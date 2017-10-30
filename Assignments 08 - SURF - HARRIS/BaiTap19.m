function BaiTap19()
    figure;
    imgI = imread('cameraman.jpg');
    arrPointI = detectSURFFeatures(imgI);
    [arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrPointI);
    imshow(imgI);
    arrSubVaildPointI = arrValidPointI.selectStrongest(20);
    hold on;
    plot(arrSubVaildPointI);
end