function [r, g, b] = MostDistantPixel(array)

% This function receives a 1xnx3 3D array with color values of pixels in
% each dimension (rgb), then finds a pixel that is the most furthest from
% the median which, will be an outlier or the one distictive color from the
% rest.
%
% Input:  array: The array of pixels
% Output: r: The red value of the pixel that is most furthest away from the median.
%         g: The green value of the pixel that is most furthest away from the median.
%         b: The blue value of the pixel that is most furthest away from the median.
%
% Author: Hyung Park

% Calculates the median value of each rgb values from the given array.
[rMed, gMed, bMed] = MedianPixel(array);

% Stores the array into a variable.
median = [rMed, gMed, bMed];

% Preallocating the array 'distances' which, distances between the median
% and the pixel is being compared.
distances = zeros(1,length(array));

% Repeat from 1 to the length of the given array with an increment of 1.
for i = 1:length(array(1,:,1))
    
    % Defining (1,i) in the array 'distances' as the distance between the
    % median and a corresponding points.
    distances(i) = PixelDistance(median, array(:,i,:));
    
end

% Finds the point that is furthest away; has the maximum distance.
mostDistant = max(distances);

% Finds the placement of that value in the array 'distances'
mostDistantPixel = find(distances==mostDistant, 1);

% Stores the corresponding values of maximum distance into the output
% variables.
r = array(1,mostDistantPixel,1);
g = array(1,mostDistantPixel,2);
b = array(1,mostDistantPixel,3);

end