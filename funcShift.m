function [matrix_shift] = funcShift(matrix_data,r)
%ShiftFunc shifts a matrix by a certain bit
[m,n] = size(matrix_data);        %Input is ladfield image 
%r is no longer magic
E = eye(m);
T = zeros(m);
% fill in the first r rows of T with the last r rows of E
T(1:r,:) = E(m-(r-1):m,:);
% fill in the rest of T with the first part of E
T(r+1:m,:) = E(1:m-r,:); 
matrix_shift = T*matrix_data; 
