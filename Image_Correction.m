load('camera2Params.mat');
name = 'GOPR0243';
sourcePath = append('source/chamber1/',name,'.JPG');
originalImage = imread(sourcePath);
undistortedImage = undistortImage(originalImage, camera2Params);
% imshow(undistortedImage);
resultPath = append('result/chamber1/',name,'_undistorted2.JPG');
imwrite(undistortedImage, resultPath);