load('camera2Params.mat');
originalImage = imread('source/GOPR0192.JPG');
undistortedImage = undistortImage(originalImage, camera2Params);
% imshow(undistortedImage);
imwrite(undistortedImage, 'result/GOPR01921_undistorted2.jpg');