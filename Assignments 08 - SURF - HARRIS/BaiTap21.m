function BaiTap21()
    %% im1
    imgI = imread('cameraman.jpg');
    arrPointI = detectSURFFeatures(imgI);
    [arrfeatureI,arrValidPointI] = extractFeatures(imgI,arrPointI);
    arrSubVaildPointI = arrValidPointI.selectStrongest(20);
    
    %%im2
    imgJ = imread('cameraman30.jpg');
    arrPointJ = detectSURFFeatures(imgJ);
    [arrfeatureJ,arrValidPointJ] = extractFeatures(imgJ,arrPointJ);
    arrSubVaildPointJ = arrValidPointJ.selectStrongest(20);
    
    %% match 2 im
    arrIndexPair = matchFeatures(arrfeatureI, arrfeatureJ);
    arrMachedPointI = arrValidPointI(arrIndexPair(:,1),:);
    arrMachedPointJ = arrValidPointJ(arrIndexPair(:,2),:);
    
    %% show result
    figure;
    ax = axes;
    showMatchedFeatures(imgI,imgJ,arrMachedPointI,arrMachedPointJ, 'montage', 'Parent',ax);
    title(ax,'Candidate point maches');
    legend(ax,'Mached points I', 'Mached points J');
    
end