clear;

close all;

% Matlab for 2036 P2. IMAGE OPS.

%Read in file  (8-bit int)
ladfield_Image = imread('2036_Sample.jpg');


%Modify File (axbx3 double matrix)
ladfield_Double = double(ladfield_Image);
ladfield_Grey = zeros(size(ladfield_Double));

%Fiddling About - Loop for Dimensions of Hadfield
for i = 1:3
ladfield_Grey = ladfield_Grey(:,:,1) + (ladfield_Double(:,:,i));
end


%Output File (convert back to 8-bit integer array)
imwrite(uint8(ladfield_Grey),'2036_Modified.jpg');
imagesc(ladfield_Grey)
colormap('gray')