clear;

close all;

% Matlab for 2036 P2. IMAGE OPS.

%Read in file  (8-bit int)
ladfield_Image = imread('2036_Sample.jpg');


%Modify File (axbx3 double matrix)
ladfield_Double = double(ladfield_Image);
ladfield_Mod = ladfield_Double(:,:,3);


%Output File (convert back to 8-bit integer array)
imwrite(uint8(ladfield_Mod),'2036_Modified.jpg');
imagesc(ladfield_Mod)