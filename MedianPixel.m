function [r, g, b] = MedianPixel(array)

% This function receives a 1xnx3 3D array of pixels and produces a median
% value for the given colors.
%
% Input:  array: 3D array of pixels
% Output: r: median value of red colors in a given array of pixels.
%         g: median value of green colors in a given array of pixels.
%         b: median value of blue colors in a given array of pixels.
%
% Author: Hyung Park

% Sorts the array into an order of [ -ve --> 0 --> +ve ]
array = sort(array);

% If colume size is an odd number (odd number of images)
if mod(length(array(1,:,1)),2) == 1
    
    % median value is the number in the middle of each layer of array.
    % Stores values in each variable: r, g, b.
    r = array(1,round(length(array(1,:,1))/2),1);
    g = array(1,round(length(array(1,:,1))/2),2);
    b = array(1,round(length(array(1,:,1))/2),3);
    
% If column size is an even number (even number of images)
else
    
    % Stores the median values in each variables.
    r = round((double(array(1,length(array(1,:,1))/2,1)) + double(array(1,length(array(1,:,1))/2+1,1))) / 2);
    g = round((double(array(1,length(array(1,:,1))/2,2)) + double(array(1,length(array(1,:,1))/2+1,2))) / 2);
    b = round((double(array(1,length(array(1,:,1))/2,3)) + double(array(1,length(array(1,:,1))/2+1,3))) / 2);
    
end

end