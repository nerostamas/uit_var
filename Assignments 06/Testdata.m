function Testdata
    fprintf('\nLoading data training....\n');
    
	load('imgTrainImagesAll.mat');
	load('lblTrainLabelsAll.mat');
	fprintf('Finished All');
	ShowImagen(imgTrainImagesAll ,lblTrainLabelsAll ,500);    

end