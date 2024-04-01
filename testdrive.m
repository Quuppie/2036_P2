function [outputArg1,outputArg2] = untitled(inputArg1,inputArg2)
%Function to Shift Rows Down
[m,n] = size(X_gray); r = 100;
E = eye(m);
T = zeros(m);
% fill in the first r rows of T with the last r rows of E
T(1:r,:) = E(m-(r-1):m,:);
% fill in the rest of T with the first part of E
T(r+1:m,:) = E(1:m-r,:);
X_shift = T*X_gray;
imagesc(uint8(X_shift));
colormap('gray');
end

