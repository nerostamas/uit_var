function BaiTap20()
    figure;
    imgI = imread('cameraman.jpg');
    arrPointI = detectHarrisFeatures(imgI);
    [arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrPointI);
    imshow(imgI);
    arrSubVaildPointI = arrValidPointI.selectStrongest(20);
    hold on;
    plot(arrSubVaildPointI);
end