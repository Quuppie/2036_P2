clear;
close all;

% -- Matlab for 2036 P2. IMAGE OPS. --

%Read in file  (8-bit int)
ladfield_Image = imread('2036_Sample.jpg');

%Modify File (axbx3 double matrix)
ladfield_Double = double(ladfield_Image);
ladfield_Grey = zeros(size(ladfield_Double));

for i = 1:3 %Fiddling About - Setting up Greyscale of Hadfield
ladfield_Grey = ladfield_Grey(:,:,1) + (ladfield_Double(:,:,i)); 
end

%% Image Modification
%Shifting the Image (Calling funcShift)
rows = 500;
ladfield_shift = funcShift(ladfield_Grey,rows);


%% Output Files (converted back to 8-bit integer array)
imwrite(uint8(ladfield_shift),'2036_Modified.jpg');





%% ALL OF THE FIGURES GO HERE
f1 = figure();
imagesc(ladfield_Grey)
colormap('gray')

f2 = figure();
imagesc(ladfield_shift)
colormap('gray')
