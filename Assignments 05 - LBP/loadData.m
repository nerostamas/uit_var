function [imgData,lblData] = loadData(strFileData,strLabelData)
     imgData = loadMNISTImages(strFileData);
     lblData = loadMNISTLabels( strLabelData); 
end