function ShowImagen(arrImage,arrLabel,n)
	lblShow = arrLabel(n);
	ImgShow = arrImage(:,n);
	img2D = reshape(ImgShow,112,[]);
	strlabel = num2str(lblShow);
	figure;
	imshow(img2D);
	title(strlabel);
end
